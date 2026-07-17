import "dart:async";
import "dart:io";

import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/api/interceptor.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/session/session_response.dart";
import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/auth/auth_state_controller.dart";
import "package:better_auth_flutter/src/core/auth/auth_state_interceptor.dart";
import "package:better_auth_flutter/src/core/auth_mode.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:better_auth_flutter/src/core/storage/custom_persist_cookie_jar.dart";
import "package:better_auth_flutter/src/core/storage/hive_storage.dart";
import "package:better_auth_flutter/src/core/storage/memory_storage.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:better_auth_flutter/src/core/storage/token_storage.dart";
import "package:better_auth_flutter/src/core/utils/logger.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_interceptor.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_options.dart";
import "package:dio/dio.dart";
import "package:dio_cookie_manager/dio_cookie_manager.dart";
import "package:flutter/foundation.dart";

class BetterAuthFlutter {
  static final BetterAuthFlutter _instance = BetterAuthFlutter._();
  late final BetterAuthClient _client;
  static bool _initialized = false;

  static late String baseUrl;
  static late final Dio dioClient;
  static late final StorageInterface? storage;
  static late final CustomPersistCookieJar _cookieJar;
  static final AuthStateController _authState = AuthStateController();
  static late final AuthMode _mode;
  static TokenStorage<String>? _tokenStorage;

  /// The authentication mode this client was initialized with.
  static AuthMode get mode => _mode;

  /// Reads the current bearer token; null in cookie mode or when signed out.
  static Future<String?> readBearerToken() async => _tokenStorage?.read();

  /// Clears the stored bearer token, if any.
  static Future<void> clearBearerToken() async => _tokenStorage?.delete();

  BetterAuthFlutter._() {
    _client = BetterAuthClient(dioClient, baseUrl: baseUrl);
  }

  /// The current authentication state, synchronously.
  static AuthState get authState => _authState.current;

  /// Emits on sign-in, sign-out, session refresh, and session expiry.
  ///
  /// Replays the current state to every new listener, so subscribing late still
  /// tells you where things stand.
  ///
  /// ```dart
  /// BetterAuthFlutter.authStateChanges.listen((state) {
  ///   switch (state) {
  ///     case AuthInitial() || AuthLoading():   // splash
  ///     case Authenticated(:final user):       // go home
  ///     case Unauthenticated():                // go to sign-in
  ///     case AuthError(:final error):          // show error
  ///   }
  /// });
  /// ```
  static Stream<AuthState> get authStateChanges => _authState.stream;

  /// Emits the signed-in [User], or null when signed out.
  ///
  /// A convenience view over [authStateChanges]. Prefer that stream when you
  /// need to tell "still loading" apart from "signed out" — this one reports
  /// both as null.
  static Stream<User?> get onAuthChange =>
      authStateChanges.map((s) => s.user).distinct();

  static Future<Result<SessionResponse>>? _inFlightRefresh;

  /// Fetches the current session and updates [authState] to match.
  ///
  /// Safe to call at any time; it is what [initialize] runs to hydrate state
  /// and what the app-resume refresh uses.
  ///
  /// Concurrent callers share one in-flight request. Without this, a screen
  /// with several widgets each calling `refreshSession` on resume would fire a
  /// burst of identical `/get-session` requests.
  static Future<Result<SessionResponse>> refreshSession() {
    return _inFlightRefresh ??= _refreshSession().whenComplete(() {
      _inFlightRefresh = null;
    });
  }

  static Future<Result<SessionResponse>> _refreshSession() async {
    if (_authState.current is AuthInitial) _authState.setLoading();

    var result = await client.getSession();

    // deferSessionRefresh: the read-only GET couldn't extend the session and
    // asked us to POST. Do it here so callers never see the two-step dance.
    if (result case Success(:final data) when data.needsRefresh == true) {
      result = await client.getSessionPost();
    }

    // The interceptor derives state from the response itself, so success needs
    // no handling here. A failure is different: a network blip must not be
    // reported as "signed out", or an offline app logs everyone out.
    if (result case Failure(:final error) when !error.isUnauthorized) {
      _authState.emit(AuthState.error(error));
    }
    return result;
  }

  /// Configures the SDK. Must be called before [client].
  ///
  /// Set [enableLogging] to emit internal diagnostics — typically
  /// `enableLogging: kDebugMode`. It is off by default because these logs go to
  /// the system log, which is readable on-device.
  ///
  /// When [hydrateOnInit] is true (the default) the stored session is looked up
  /// in the background and delivered via [authStateChanges]. This deliberately
  /// is not awaited: blocking `main()` on a network call would stall app
  /// startup on a slow connection. Gate your UI on [authStateChanges] instead.
  /// [mode] selects cookie (default) or bearer authentication. In bearer mode
  /// the token is captured from the `set-auth-token` response header and stored
  /// in [tokenStorage] (in-memory by default, so it does not survive a restart
  /// unless you supply persistent storage).
  static Future<void> initialize({
    required String url,
    Dio? dio,
    StorageInterface? store,
    AuthMode mode = AuthMode.cookie,
    TokenStorage<String>? tokenStorage,
    BearerOptions bearerOptions = const BearerOptions(),
    bool enableLogging = false,
    bool hydrateOnInit = true,
  }) async {
    if (_initialized) return;

    BetterAuthLog.enabled = enableLogging;
    baseUrl = url;
    _mode = mode;

    if (store == null && !kIsWeb) {
      await HiveStorage.init();
      storage = HiveStorage();
    } else {
      storage = store;
    }

    dioClient =
        dio ??
        Dio(
          BaseOptions(
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
              HttpHeaders.userAgentHeader: "BetterAuthFlutter/1.0.0",
              "flutter-origin": "flutter://",
              "expo-origin": "exp://",
              "x-skip-oauth-proxy": true,
            },
            validateStatus: (status) => status != null && status < 300,
          ),
        );

    _cookieJar = CustomPersistCookieJar(
      store: storage,
      storage: MemoryStorage(),
    );

    // Cookie xor bearer for auth transport; both share the null-stripping and
    // auth-state interceptors.
    if (mode == AuthMode.bearer) {
      _tokenStorage = tokenStorage ?? InMemoryTokenStorage<String>();
      dioClient.interceptors.add(
        BearerInterceptor(storage: _tokenStorage!, options: bearerOptions),
      );
    } else {
      dioClient.interceptors.add(CookieManager(_cookieJar));
    }
    dioClient.interceptors.add(RemoveNullsInterceptor());
    dioClient.interceptors.add(AuthStateInterceptor(_authState));
    _initialized = true;

    if (hydrateOnInit) {
      // Intentionally not awaited — see [hydrateOnInit].
      unawaited(refreshSession());
    }
  }

  static BetterAuthClient get client {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    return _instance._client;
  }

  /// Clears every cookie from both the in-memory jar and the durable store,
  /// and moves [authState] to unauthenticated.
  ///
  /// Call this after signing out. Clearing only the jar leaves the session
  /// cookie in durable storage, where the next launch rehydrates it.
  static Future<void> clearCookies() async {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    await _cookieJar.deleteAll();
    await _tokenStorage?.delete();
    _authState.setUnauthenticated();
  }

  /// Returns the persisted cookies (including the session cookie) for the given
  /// [uri], or for the configured [baseUrl] when [uri] is null. Use this to
  /// attach Better Auth session cookies to requests made by your own HTTP
  /// client.
  static Future<List<Cookie>> getCookies({Uri? uri}) {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    return _cookieJar.loadForRequest(uri ?? Uri.parse(baseUrl));
  }

  /// Persists `Set-Cookie` values received from a non-package HTTP response,
  /// so that refreshed session cookies stay in sync with Better Auth's jar.
  ///
  /// Pass the raw Set-Cookie header values for the response — with
  /// `package:http` use `response.headersSplitValues['set-cookie'] ?? const []`
  /// (not `response.headers`, which joins multiple Set-Cookie values with
  /// commas and breaks parsing).
  static Future<void> saveCookiesFromResponse(
    Uri uri,
    Iterable<String> setCookieHeaders,
  ) async {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    if (setCookieHeaders.isEmpty) return;
    final cookies = setCookieHeaders
        .map((v) => Cookie.fromSetCookieValue(v))
        .toList();
    await _cookieJar.saveFromResponse(uri, cookies);
  }

  /// Returns a headers map containing the `Cookie` header for [uri] (or the
  /// configured [baseUrl] when null), ready to merge into an outgoing request.
  /// Returns an empty map when there are no cookies to send.
  static Future<Map<String, String>> getAuthHeaders({Uri? uri}) async {
    final cookies = await getCookies(uri: uri);
    if (cookies.isEmpty) return const {};
    final header = cookies.map((c) => "${c.name}=${c.value}").join("; ");
    return {HttpHeaders.cookieHeader: header};
  }
}

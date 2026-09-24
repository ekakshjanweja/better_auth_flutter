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
import "package:better_auth_flutter/src/core/api/default/sign_in/models/social/social_provider.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:better_auth_flutter/src/core/oauth/oauth_handler.dart";
import "package:better_auth_flutter/src/core/storage/custom_persist_cookie_jar.dart";
import "package:better_auth_flutter/src/core/storage/memory_storage.dart";
import "package:better_auth_flutter/src/core/storage/secure_storage.dart";
import "package:better_auth_flutter/src/core/storage/secure_token_storage.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:better_auth_flutter/src/core/storage/token_storage.dart";
import "package:better_auth_flutter/src/core/utils/logger.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_interceptor.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_options.dart";
import "package:dio/dio.dart";
import "package:dio_cookie_manager/dio_cookie_manager.dart";
import "package:flutter/foundation.dart";

class BetterAuthFlutter {
  BetterAuthFlutter._();

  static BetterAuthClient? _client;
  static bool _initialized = false;

  static late String baseUrl;
  static late Dio dioClient;
  static late StorageInterface? storage;
  static late CustomPersistCookieJar _cookieJar;
  static final AuthStateController _authState = AuthStateController();
  static late AuthMode _mode;
  static TokenStorage<String>? _tokenStorage;
  static String? _callbackUrlScheme;
  static final List<Interceptor> _ownedInterceptors = <Interceptor>[];

  /// Package version sent as the `user-agent` on every request.
  static const String version = "0.2.0";

  /// Starts a browser-redirect social sign-in for providers without a native
  /// SDK. Requires `callbackUrlScheme` to have been passed to [initialize].
  ///
  /// Google and Apple should use the native ID-token flow instead
  /// (`client.signInSocial(body: SignInSocialBody.of(idToken: …))`), which
  /// avoids the browser and its separate cookie store.
  ///
  /// Returns the parsed callback. In a token-handoff setup, exchange
  /// `callback.token` via the `one_time_token` plugin — see [OAuthHandler].
  static Future<Result<SocialCallback>> signInWithProvider({
    required SocialProvider provider,
    List<String>? scopes,
    String? callbackURL,
  }) {
    return OAuthHandler(
      client: client,
      scheme: _callbackUrlScheme,
    ).signIn(provider: provider, scopes: scopes, callbackURL: callbackURL);
  }

  /// The authentication mode this client was initialized with.
  static AuthMode get mode => _mode;

  /// Reads the current bearer token; null in cookie mode or when signed out.
  static Future<String?> readBearerToken() async => _tokenStorage?.read();

  /// Clears the stored bearer token, if any.
  static Future<void> clearBearerToken() async => _tokenStorage?.delete();

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

  static Future<Result<SessionResponse?>>? _inFlightRefresh;

  /// Fetches the current session and updates [authState] to match.
  ///
  /// Safe to call at any time; it is what [initialize] runs to hydrate state
  /// and what the app-resume refresh uses.
  ///
  /// Concurrent callers share one in-flight request. Without this, a screen
  /// with several widgets each calling `refreshSession` on resume would fire a
  /// burst of identical `/get-session` requests.
  static Future<Result<SessionResponse?>> refreshSession() {
    return _inFlightRefresh ??= _refreshSession().whenComplete(() {
      _inFlightRefresh = null;
    });
  }

  static Future<Result<SessionResponse?>> _refreshSession() async {
    if (_authState.current is AuthInitial) _authState.setLoading();

    var result = await client.getSession();

    // deferSessionRefresh: the read-only GET couldn't extend the session and
    // asked us to POST. Do it here so callers never see the two-step dance.
    if (result case Success(:final data) when data?.needsRefresh == true) {
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
  /// Safe to call again: a second call tears down the previous configuration
  /// (interceptors, client, in-flight refresh) and applies the new one.
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
  /// in [tokenStorage] (keychain/keystore by default on native; in-memory on
  /// web).
  static Future<void> initialize({
    required String url,
    Dio? dio,
    StorageInterface? store,
    AuthMode mode = AuthMode.cookie,
    TokenStorage<String>? tokenStorage,
    BearerOptions bearerOptions = const BearerOptions(),
    String? callbackUrlScheme,
    bool enableLogging = false,
    bool hydrateOnInit = true,
  }) async {
    if (_initialized) await reset();

    BetterAuthLog.enabled = enableLogging;
    baseUrl = url;
    _mode = mode;
    _callbackUrlScheme = callbackUrlScheme;

    if (store != null) {
      storage = store;
    } else if (!kIsWeb) {
      // Encrypted keychain/keystore by default: session cookies are credentials.
      // Opt into SharedPreferencesStorage explicitly via [store].
      storage = SecureStorage();
    } else {
      storage = null;
    }

    dioClient = dio ?? _defaultDio();

    // Better Auth rejects any cookie-bearing non-GET request that arrives
    // without an `Origin` header (403 MISSING_OR_NULL_ORIGIN). It reads only
    // the standard header — `flutter-origin` above is for the Expo-style
    // proxy, not the origin check. Browsers set `Origin` themselves; native
    // HTTP clients never do, so derive it from [url]. Better Auth always
    // trusts its own `baseURL` origin, so this needs no `trustedOrigins`
    // entry. Skipped on web, where the header is forbidden to scripts.
    // putIfAbsent so a caller-supplied [dio] keeps its own value.
    if (!kIsWeb) {
      final origin = _originOf(url);
      if (origin != null) {
        dioClient.options.headers.putIfAbsent("origin", () => origin);
      }
    }

    _cookieJar = CustomPersistCookieJar(
      store: storage,
      storage: MemoryStorage(),
    );

    // Cookie xor bearer for auth transport; both share the null-stripping and
    // auth-state interceptors.
    if (mode == AuthMode.bearer) {
      _tokenStorage =
          tokenStorage ??
          (kIsWeb ? InMemoryTokenStorage<String>() : SecureTokenStorage());
      _addInterceptor(
        BearerInterceptor(storage: _tokenStorage!, options: bearerOptions),
      );
    } else {
      _addInterceptor(CookieManager(_cookieJar));
    }
    _addInterceptor(RemoveNullsInterceptor());
    _addInterceptor(
      AuthStateInterceptor(
        _authState,
        onSessionEnded: _clearPersistedSession,
        onProfileChanged: refreshSession,
      ),
    );
    _client = BetterAuthClient(dioClient, baseUrl: baseUrl);
    _initialized = true;

    if (hydrateOnInit) {
      // Intentionally not awaited — see [hydrateOnInit].
      unawaited(refreshSession());
    }
  }

  /// Tears down a previous [initialize] so it can be called again.
  ///
  /// Removes interceptors this package added, drops the client, and returns
  /// [authState] to [AuthInitial]. Does not delete persisted cookies or the
  /// bearer token — the next [initialize] (or a sign-out) owns that.
  static Future<void> reset() async {
    if (!_initialized) return;
    _inFlightRefresh = null;
    for (final interceptor in _ownedInterceptors) {
      dioClient.interceptors.remove(interceptor);
    }
    _ownedInterceptors.clear();
    _client = null;
    _tokenStorage = null;
    _callbackUrlScheme = null;
    _authState.emit(const AuthState.initial());
    _initialized = false;
  }

  static Dio _defaultDio() {
    return Dio(
      BaseOptions(
        headers: <String, Object>{
          // String literals rather than HttpHeaders.* constants, which come
          // from dart:io and are unavailable on web.
          "content-type": "application/json",
          "user-agent": "BetterAuthFlutter/$version",
          "flutter-origin": "flutter://",
          "expo-origin": "exp://",
          "x-skip-oauth-proxy": true,
        },
        validateStatus: (status) => status != null && status < 300,
      ),
    );
  }

  static void _addInterceptor(Interceptor interceptor) {
    _ownedInterceptors.add(interceptor);
    dioClient.interceptors.add(interceptor);
  }

  static Future<void> _clearPersistedSession() async {
    if (!_initialized) return;
    await _cookieJar.deleteAll();
    await _tokenStorage?.delete();
  }

  /// The `scheme://host[:port]` of [url], or null when it has none to give.
  ///
  /// `Uri.origin` throws for a relative URL or a non-http(s) scheme. Those are
  /// misconfigurations, but they must not take down [initialize] — a request
  /// with no `Origin` still succeeds against a server that doesn't check it.
  static String? _originOf(String url) {
    try {
      return Uri.parse(url).origin;
    } on StateError {
      BetterAuthLog.warning("no origin derivable from base url: $url");
      return null;
    } on FormatException {
      BetterAuthLog.warning("unparseable base url: $url");
      return null;
    }
  }

  static BetterAuthClient get client {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    return _client!;
  }

  /// Clears every cookie from both the in-memory jar and the durable store,
  /// and moves [authState] to unauthenticated.
  ///
  /// Call this after signing out. Clearing only the jar leaves the session
  /// cookie in durable storage, where the next launch rehydrates it.
  ///
  /// `client.signOut()` already triggers this via the auth-state interceptor;
  /// this method is for custom HTTP clients and tests.
  static Future<void> clearCookies() async {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    await _clearPersistedSession();
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
    return {"cookie": header};
  }
}

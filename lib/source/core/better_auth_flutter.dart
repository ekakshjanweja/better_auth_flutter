import "dart:io";

import "package:better_auth_flutter/source/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/source/core/api/interceptor.dart";
import "package:better_auth_flutter/source/core/storage/custom_persist_cookie_jar.dart";
import "package:better_auth_flutter/source/core/storage/hive_storage.dart";
import "package:better_auth_flutter/source/core/storage/memory_storage.dart";
import "package:better_auth_flutter/source/core/storage/storage.dart";
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

  BetterAuthFlutter._() {
    _client = BetterAuthClient(dioClient, baseUrl: baseUrl);
  }

  static Future<void> initialize({
    required String url,
    Dio? dio,
    StorageInterface? store,
  }) async {
    if (_initialized) return;

    baseUrl = url;

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

    dioClient.interceptors.add(CookieManager(_cookieJar));
    dioClient.interceptors.add(RemoveNullsInterceptor());
    _initialized = true;
  }

  static BetterAuthClient get client {
    assert(
      _initialized,
      "BetterAuthFlutter not initialized. Call initialize() first.",
    );
    return _instance._client;
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

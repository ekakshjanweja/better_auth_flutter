import "dart:io";
import "package:better_auth_flutter/source/core/api/better_auth_client.dart";
import "package:better_auth_flutter/source/core/api/interceptor.dart";
import "package:better_auth_flutter/source/storage/local_storage.dart";
import "package:better_auth_flutter/source/storage/memory_storage.dart";
import "package:better_auth_flutter/source/storage/persistant_cookie_store.dart";
import "package:better_auth_flutter/source/storage/storage.dart";
import "package:dio/dio.dart";
import "package:dio_cookie_manager/dio_cookie_manager.dart";
import "package:package_info_plus/package_info_plus.dart";

class BetterAuthFlutter {
  static final BetterAuthFlutter _instance = BetterAuthFlutter._internal();
  late final BetterAuthClient _client;
  static bool _initialized = false;

  static late String baseUrl;
  static late final Dio dioClient;
  static late final StorageInterface _storage;

  BetterAuthFlutter._internal() {
    _client = BetterAuthClient();
  }

  static Future<void> initialize({
    required String url,
    Dio? dio,
    StorageInterface? storage,
  }) async {
    if (_initialized) return;

    baseUrl = url;

    _storage = storage ?? LocalStorage();

    // Get package info for dynamic user agent
    final packageInfo = await PackageInfo.fromPlatform();
    final userAgent = "${packageInfo.appName}/${packageInfo.version}";

    dioClient =
        dio ??
        Dio(
          BaseOptions(
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
              HttpHeaders.userAgentHeader: userAgent,
            },
            validateStatus: (status) => status != null && status < 300,
          ),
        );

    final cookieJar = PersistantCookieStore(
      store: _storage,
      storage: MemoryStorage(),
    );
    dioClient.interceptors.add(CookieManager(cookieJar));
    dioClient.interceptors.add(RemoveNullsInterceptor());
    _initialized = true;
  }

  static BetterAuthClient get client {
    assert(
      _initialized,
      "Better Auth Flutter has not been initialized. Call initialize() first.",
    );
    return _instance._client;
  }
}

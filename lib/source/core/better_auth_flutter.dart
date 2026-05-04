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

    final cookieJar = CustomPersistCookieJar(
      store: storage,
      storage: MemoryStorage(),
    );

    dioClient.interceptors.add(CookieManager(cookieJar));
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
}

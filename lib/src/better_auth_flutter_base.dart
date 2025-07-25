import "package:better_auth_flutter/src/core/api/api.dart";
import "package:better_auth_flutter/src/core/config/config.dart";
import "package:better_auth_flutter/src/core/local_storage/kv_store.dart";
import "package:better_auth_flutter/src/modules/better_auth_client.dart";

class BetterAuth {
  BetterAuth._();

  static final BetterAuth _instance = BetterAuth._();
  static BetterAuth get instance => _instance;

  static bool _isInitialized = false;

  final BetterAuthClient _client = BetterAuthClient();
  BetterAuthClient get client {
    if (!_isInitialized) {
      throw Exception(
        "BetterAuth not initialized. Call BetterAuth.init() first.",
      );
    }
    return _client;
  }

  static Future<void> init({
    required Uri baseUrl,
    String apiPrefixPath = "/api/auth",
  }) async {
    if (_isInitialized) return;
    await KVStore.init();
    await Api.init(apiPrefixPath: apiPrefixPath);
    Config.initialize(uri: baseUrl);
    _isInitialized = true;
  }
}

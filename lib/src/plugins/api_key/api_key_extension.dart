import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/api_key/better_auth_api_key.dart";

/// Caches one instance per client; see [BetterAuthApiKey].
final Expando<BetterAuthApiKey> _cache = Expando<BetterAuthApiKey>(
  "BetterAuthApiKey",
);

extension ApiKeyExtension on BetterAuthClient {
  BetterAuthApiKey get apiKey => _cache[this] ??= BetterAuthApiKey(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

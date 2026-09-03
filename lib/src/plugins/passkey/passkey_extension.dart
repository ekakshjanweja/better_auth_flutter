import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";

import "better_auth_passkey.dart";

/// Caches one instance per client; see [BetterAuthPasskey].
final Expando<BetterAuthPasskey> _cache = Expando<BetterAuthPasskey>(
  "BetterAuthPasskey",
);

extension PasskeyBetterAuthExtension on BetterAuthClient {
  BetterAuthPasskey get passkey => _cache[this] ??= BetterAuthPasskey(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

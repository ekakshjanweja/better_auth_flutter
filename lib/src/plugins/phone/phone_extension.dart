import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";

import "better_auth_phone.dart";

/// Caches one instance per client; see [BetterAuthPhone].
final Expando<BetterAuthPhone> _cache = Expando<BetterAuthPhone>(
  "BetterAuthPhone",
);

extension PhoneBetterAuthExtension on BetterAuthClient {
  BetterAuthPhone get phone => _cache[this] ??= BetterAuthPhone(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

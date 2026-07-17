import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/admin/better_auth_admin.dart";

/// Caches one instance per client; without this the getter builds a fresh
/// retrofit client on every property access.
final Expando<BetterAuthAdmin> _cache = Expando<BetterAuthAdmin>(
  "BetterAuthAdmin",
);

extension AdminBetterAuthExtension on BetterAuthClient {
  BetterAuthAdmin get admin => _cache[this] ??= BetterAuthAdmin(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

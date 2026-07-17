import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/jwt/better_auth_jwt.dart";

/// Caches one instance per client. Without this the getter builds a fresh
/// retrofit client on every property access, so `client.jwt.a()` followed by
/// `client.jwt.b()` allocates twice.
final Expando<BetterAuthJwt> _cache = Expando<BetterAuthJwt>("BetterAuthJwt");

extension BetterAuthJwtExtension on BetterAuthClient {
  BetterAuthJwt get jwt => _cache[this] ??= BetterAuthJwt(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

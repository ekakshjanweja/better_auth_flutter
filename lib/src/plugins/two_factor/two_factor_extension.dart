import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/two_factor/better_auth_two_factor.dart";

/// Caches one instance per client; see [BetterAuthTwoFactor].
final Expando<BetterAuthTwoFactor> _cache = Expando<BetterAuthTwoFactor>(
  "BetterAuthTwoFactor",
);

extension TwoFactorExtension on BetterAuthClient {
  BetterAuthTwoFactor get twoFactor => _cache[this] ??= BetterAuthTwoFactor(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

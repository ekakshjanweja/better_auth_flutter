import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/one_time_token/better_auth_one_time_token.dart";

/// Caches one instance per client; see [BetterAuthOneTimeToken].
final Expando<BetterAuthOneTimeToken> _cache = Expando<BetterAuthOneTimeToken>(
  "BetterAuthOneTimeToken",
);

extension OneTimeTokenExtension on BetterAuthClient {
  BetterAuthOneTimeToken get oneTimeToken =>
      _cache[this] ??= BetterAuthOneTimeToken(
        BetterAuthFlutter.dioClient,
        baseUrl: BetterAuthFlutter.baseUrl,
      );
}

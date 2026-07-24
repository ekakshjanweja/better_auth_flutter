import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/anonymous/better_auth_anonymous.dart";

/// Caches one instance per client; see [BetterAuthAnonymous].
final Expando<BetterAuthAnonymous> _cache = Expando<BetterAuthAnonymous>(
  "BetterAuthAnonymous",
);

extension AnonymousExtension on BetterAuthClient {
  BetterAuthAnonymous get anonymous => _cache[this] ??= BetterAuthAnonymous(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

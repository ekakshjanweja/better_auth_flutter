import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/multi_session/better_auth_multi_session.dart";

/// Caches one instance per client; see [BetterAuthMultiSession].
final Expando<BetterAuthMultiSession> _cache = Expando<BetterAuthMultiSession>(
  "BetterAuthMultiSession",
);

extension MultiSessionExtension on BetterAuthClient {
  BetterAuthMultiSession get multiSession =>
      _cache[this] ??= BetterAuthMultiSession(
        BetterAuthFlutter.dioClient,
        baseUrl: BetterAuthFlutter.baseUrl,
      );
}

import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/magic_link/better_auth_magic_link.dart";

/// Caches one instance per client; see [BetterAuthMagicLink].
final Expando<BetterAuthMagicLink> _cache = Expando<BetterAuthMagicLink>(
  "BetterAuthMagicLink",
);

extension MagicLinkExtension on BetterAuthClient {
  BetterAuthMagicLink get magicLink => _cache[this] ??= BetterAuthMagicLink(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

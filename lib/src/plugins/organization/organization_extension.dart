import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/organization/better_auth_organization.dart";

/// Caches one instance per client; see [BetterAuthOrganization].
final Expando<BetterAuthOrganization> _cache = Expando<BetterAuthOrganization>(
  "BetterAuthOrganization",
);

extension OrganizationExtension on BetterAuthClient {
  BetterAuthOrganization get organization =>
      _cache[this] ??= BetterAuthOrganization(
        BetterAuthFlutter.dioClient,
        baseUrl: BetterAuthFlutter.baseUrl,
      );
}

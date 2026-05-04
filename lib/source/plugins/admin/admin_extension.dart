import "package:better_auth_flutter/source/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/source/core/better_auth_flutter.dart";
import "package:better_auth_flutter/source/plugins/admin/better_auth_admin.dart";

extension AdminBetterAuthExtension on BetterAuthClient {
  BetterAuthAdmin get admin => BetterAuthAdmin(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

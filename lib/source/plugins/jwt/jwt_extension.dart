import "package:better_auth_flutter/source/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/source/core/better_auth_flutter.dart";
import "package:better_auth_flutter/source/plugins/jwt/better_auth_jwt.dart";

extension BetterAuthJwtExtension on BetterAuthClient {
  BetterAuthJwt get jwt => BetterAuthJwt(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

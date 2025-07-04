import "package:better_auth_flutter/src/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/modules/social_auth/social_auth.dart";

extension SocialAuthExtension on BetterAuthClient {
  SocialAuth get social => SocialAuth(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/models/result/result.dart";
import "package:better_auth_flutter/src/core/models/result/response/status_response.dart";
import "package:better_auth_flutter/src/core/models/session_response/response/session_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/callback/request/social_callback_request.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/link/request/social_link_request.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/link/response/social_link_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/list_account/response/social_account_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/token/request/social_token_request.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/token/response/token_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/unlink/request/social_unlink_request.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "social_auth.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class SocialAuth {
  factory SocialAuth(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _SocialAuth;

  @POST("/callback/{id}")
  Future<Result<SessionResponse>> callback({
    @Path("id") required String provider,
    @Body() required SocialCallbackRequest request,
  });

  @POST("/link-social")
  Future<Result<SocialLinkResponse>> link({
    @Body() required SocialLinkRequest request,
  });

  @GET("/list-accounts")
  Future<Result<List<SocialAccountResponse>>> listAccounts();

  @GET("/unlink-account")
  Future<Result<StatusResponse>> unlink({
    @Body() required SocialUnlinkRequest request,
  });

  @POST("/refresh-token")
  Future<Result<TokenResponse>> refreshToken({
    @Body() required SocialTokenRequest request,
  });

  @POST("/get-access-token")
  Future<Result<TokenResponse>> getAccessToken({
    @Body() required SocialTokenRequest request,
  });
}

import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/models/result/result.dart";
import "package:better_auth_flutter/src/core/models/result/status_response.dart";
import "package:better_auth_flutter/src/core/models/session_response/session_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/link/social_link_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/list_account/social_account_response.dart";
import "package:better_auth_flutter/src/modules/social_auth/models/token/token_response.dart";
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
    @BodyExtra("code") String? code,
    @BodyExtra("state") String? state,
  });

  @POST("/link-social")
  Future<Result<SocialLinkResponse>> link({
    @BodyExtra('callbackURL') String? callbackURL,
    @BodyExtra('scopes') String? scopes,
    @BodyExtra('provider') required String provider,
  });

  @GET("/list-accounts")
  Future<Result<List<SocialAccountResponse>>> listAccounts();

  @GET("/unlink-account")
  Future<Result<StatusResponse>> unlink({
    @BodyExtra("providerId") required String providerId,
    @BodyExtra("accountId") String? accountId,
  });

  @POST("/refresh-token")
  Future<Result<TokenResponse>> refreshToken({
    @BodyExtra("providerId") required String providerId,
    @BodyExtra("accountId") String? accountId,
    @BodyExtra("userId") String? userId,
  });

  @POST("/get-access-token")
  Future<Result<TokenResponse>> getAccessToken({
    @BodyExtra("providerId") required String providerId,
    @BodyExtra("accountId") String? accountId,
    @BodyExtra("userId") String? userId,
  });
}

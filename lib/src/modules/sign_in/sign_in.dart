import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/models/result/result.dart";
import "package:better_auth_flutter/src/modules/sign_in/models/email/request/sign_in_email_request.dart";
import "package:better_auth_flutter/src/modules/sign_in/models/email/response/sign_in_email_response.dart";
import "package:better_auth_flutter/src/modules/sign_in/models/social/request/sign_in_social_request.dart";
import "package:better_auth_flutter/src/modules/sign_in/models/social/response/sign_in_social_response.dart";
import "package:better_auth_flutter/src/modules/sign_in/models/username/request/sign_in_username_request.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "sign_in.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class SignIn {
  factory SignIn(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
      _SignIn;

  @POST("/sign-in/social")
  Future<Result<SignInSocialResponse>> social({
    @Body() required SignInSocialRequest request,
  });

  @POST("/sign-in/email")
  Future<Result<SignInEmailResponse>> email({
    @Body() required SignInEmailRequest request,
  });

  @POST("/sign-in/username")
  Future<Result<SignInEmailResponse>> username({
    @Body() required SignInUsernameRequest request,
  });

  // @POST("/sign-in/anonymous")
  // Future<Result<SignInEmailResponse>> anonymous();
}

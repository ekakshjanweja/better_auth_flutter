import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/models/result/result.dart";
import "package:better_auth_flutter/src/modules/sign_up/models/request/sign_up_request.dart";
import "package:better_auth_flutter/src/modules/sign_up/models/response/sign_up_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "sign_up.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class SignUp {
  factory SignUp(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
      _SignUp;

  @POST("/sign-up/email")
  Future<Result<SignUpResponse>> email({
    @Body() required SignUpRequest request,
  });
}

import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/default/sign_up/sign_up_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/success_response/success_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_email_otp.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthEmailOtp {
  factory BetterAuthEmailOtp(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthEmailOtp;

  @POST("/email-otp/send-verification-otp")
  Future<Result<SuccessResponse>> sendVerification({
    @BodyExtra("email") required String email,
    @BodyExtra("type") required String type,
  });

  @POST("/email-otp/verify-email")
  Future<Result<SignUpResponse>> verifyEmail({
    @BodyExtra("email") required String email,
    @BodyExtra("otp") required String otp,
  });

  @POST("/sign-in/email-otp")
  Future<Result<SignUpResponse>> signIn({
    @BodyExtra("email") required String email,
    @BodyExtra("otp") required String otp,
  });

  @POST("/forget-password/email-otp")
  Future<Result<SuccessResponse>> forgotPassword({
    @BodyExtra("email") required String email,
  });

  @POST("/email-otp/reset-password")
  Future<Result<SuccessResponse>> resetPassword({
    @BodyExtra("email") required String email,
    @BodyExtra("otp") required String otp,
    @BodyExtra("password") required String password,
  });
}

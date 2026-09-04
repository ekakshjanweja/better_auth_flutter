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

  /// Signs in with an OTP. Same server-1.7 mailbox-truth rule as the
  /// magic-link flow: an unconfirmed account signing in here first loses
  /// its unproven password/linked accounts and sessions.
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

  /// Starts an email change: sends an OTP to [newEmail].
  @POST("/email-otp/request-email-change")
  Future<Result<SuccessResponse>> requestEmailChange({
    @BodyExtra("newEmail") required String newEmail,
  });

  /// Completes an email change with the OTP sent to the new address.
  @POST("/email-otp/change-email")
  Future<Result<SuccessResponse>> changeEmail({
    @BodyExtra("newEmail") required String newEmail,
    @BodyExtra("otp") required String otp,
  });

  /// Verifies an OTP without consuming it. [type] is one of
  /// `email-verification`, `sign-in`, `forget-password`, `change-email`.
  @POST("/email-otp/check-verification-otp")
  Future<Result<SuccessResponse>> checkVerificationOtp({
    @BodyExtra("email") required String email,
    @BodyExtra("type") required String type,
    @BodyExtra("otp") required String otp,
  });

  /// Sends a password-reset OTP (no reset link involved).
  @POST("/email-otp/request-password-reset")
  Future<Result<SuccessResponse>> requestPasswordReset({
    @BodyExtra("email") required String email,
  });
}

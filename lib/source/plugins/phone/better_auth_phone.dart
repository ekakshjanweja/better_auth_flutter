import "package:better_auth_flutter/source/core/api/adapter.dart";
import "package:better_auth_flutter/source/core/api/default/sign_up/sign_up_response.dart";
import "package:better_auth_flutter/source/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/source/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/source/plugins/phone/models/phone_body/phone_body.dart";
import "package:better_auth_flutter/source/plugins/phone/models/reset/reset_phone_password_body.dart";
import "package:better_auth_flutter/source/plugins/phone/models/sign_in_phone_body/sign_in_phone_body.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

import "models/verify/verify_phone_body.dart";
import "models/send_otp/send_otp_response.dart";

part "better_auth_phone.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthPhone {
  factory BetterAuthPhone(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthPhone;

  @POST("/sign-in/phone-number")
  Future<Result<SignUpResponse>> signIn({
    @Body(nullToAbsent: true) required SignInPhoneBody body,
  });

  @POST("/phone-number/send-otp")
  Future<Result<SendOTPResponse>> sendOtp({
    @Body(nullToAbsent: true) required PhoneBody body,
  });

  @POST("/phone-number/verify")
  Future<Result<SignUpResponse>> verify({
    @Body(nullToAbsent: true) required VerifyPhoneBody body,
  });

  @POST("/phone-number/request-password-reset")
  Future<Result<StatusResponse>> requestPasswordResetOTP({
    @Body(nullToAbsent: true) required PhoneBody body,
  });

  @POST("/phone-number/reset-password")
  Future<Result<StatusResponse>> restPassword({
    @Body(nullToAbsent: true) required ResetPhonePasswordBody body,
  });
}

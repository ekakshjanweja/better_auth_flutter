import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/models/change_email/request/change_email_request.dart";
import "package:better_auth_flutter/src/core/models/change_password/request/change_password_request.dart";
import "package:better_auth_flutter/src/core/models/delete_user/request/delete_user_request.dart";
import "package:better_auth_flutter/src/core/models/forget_password/request/forget_password_request.dart";
import "package:better_auth_flutter/src/core/models/reset_password/request/reset_password_request.dart";
import "package:better_auth_flutter/src/core/models/result/response/status_response.dart";
import "package:better_auth_flutter/src/core/models/result/response/success_response.dart";
import "package:better_auth_flutter/src/core/models/result/result.dart";
import "package:better_auth_flutter/src/core/models/send_verification_email/request/send_verification_email_request.dart";
import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:better_auth_flutter/src/core/models/session_response/response/session_response.dart";
import "package:better_auth_flutter/src/core/models/sign_out/response/sign_out_response.dart";
import "package:better_auth_flutter/src/core/models/update_user/request/update_user_request.dart";
import "package:better_auth_flutter/src/core/models/verify_email/response/verify_email_response.dart";
import "package:better_auth_flutter/src/modules/sign_up/models/response/sign_up_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_client.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthClient {
  factory BetterAuthClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger errorLogger,
  }) = _BetterAuthClient;

  @GET("/get-session")
  Future<Result<SessionResponse>> getSession();

  @POST("/sign-out")
  Future<Result<SignOutResponse>> signOut();

  @POST("/forget-password")
  Future<Result<StatusResponse>> forgetPassword({
    @Body() required ForgetPasswordRequest request,
  });

  @POST("/reset-password")
  Future<Result<StatusResponse>> resetPassword({
    @Body() required ResetPasswordRequest request,
  });

  @GET("/verify-email")
  Future<Result<VerifyEmailResponse>> verifyEmail({
    @Query("token") required String token,
    @Query("callbackURL") String? callbackURL,
  });

  @POST("/send-verification-email")
  Future<Result<StatusResponse>> sendVerificationEmail({
    @Body() required SendVerificationEmailRequest request,
  });

  @POST("/change-email")
  Future<Result<StatusResponse>> changeEmail({
    @Body() required ChangeEmailRequest request,
  });

  @POST("/change-password")
  Future<Result<SignUpResponse>> changePassword({
    @Body() required ChangePasswordRequest request,
  });

  @POST("/update-user")
  Future<Result<StatusResponse>> updateUser({
    @Body() required UpdateUserRequest request,
  });

  @POST("/delete-user")
  Future<Result<SuccessResponse>> deleteUser({
    @Body() required DeleteUserRequest request,
  });

  @GET("/list-sessions")
  Future<Result<List<Session>>> listSessions();

  @POST("/revoke-session")
  Future<Result<StatusResponse>> revokeSession({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/revoke-sessions")
  Future<Result<StatusResponse>> revokeSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/revoke-other-sessions")
  Future<Result<StatusResponse>> revokeOtherSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });
}

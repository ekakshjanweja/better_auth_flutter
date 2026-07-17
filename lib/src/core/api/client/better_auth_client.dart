import "package:better_auth_flutter/src/core/api/default/sign_up/sign_up_response.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/email/sign_in_email_response.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/social/response/social_sign_in_response.dart";
import "package:better_auth_flutter/src/core/models/account/account.dart";
import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

import "../adapter.dart";

import "../models/common/sign_out/sign_out_response.dart";
import "../models/common/verify_email/verify_email_response.dart";
import "../models/result/result/result.dart";
import "../models/result/status_response/status_response.dart";
import "../models/result/success_response/success_response.dart";
import "../models/session/session_response.dart";

part "better_auth_client.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthClient {
  factory BetterAuthClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthClient;

  @GET("/ok")
  Future<Result<StatusResponse>> ok();

  @GET("/reference/openapi.json")
  Future<Result<dynamic>> openApiReference();

  @POST("/sign-up/email")
  Future<Result<SignUpResponse>> signUpEmail({
    @BodyExtra("name") required String name,
    @BodyExtra("email") required String email,
    @BodyExtra("password") required String password,
    @BodyExtra("image") String? image,
    @BodyExtra("callbackURL") String? callbackURL,
  });

  @POST("/sign-in/email")
  Future<Result<SignInEmailResponse>> signInEmail({
    @BodyExtra("email") required String email,
    @BodyExtra("password") required String password,
    @BodyExtra("rememberMe") bool? rememberMe,
    @BodyExtra("callbackURL") String? callbackURL,
  });

  @POST("/sign-in/username")
  Future<Result<SignInEmailResponse>> signInUsername({
    @BodyExtra("username") required String username,
    @BodyExtra("password") required String password,
    @BodyExtra("rememberMe") bool? rememberMe,
    @BodyExtra("callbackURL") String? callbackURL,
  });

  @POST("/sign-in/social")
  Future<Result<SignInSocialResponse>> signInSocial({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/get-session")
  Future<Result<SessionResponse>> getSession();

  @POST("/get-session")
  Future<Result<SessionResponse>> getSessionPost({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/sign-out")
  Future<Result<SignOutResponse>> signOut({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/forget-password")
  Future<Result<StatusResponse>> forgotPassword({
    @BodyExtra("email") required String email,
    @BodyExtra("redirectTo") String? redirectTo,
  });

  @POST("/reset-password")
  Future<Result<StatusResponse>> resetPassword({
    @BodyExtra("newPassword") required String newPassword,
    @BodyExtra("token") String? token,
  });

  @GET("/reset-password/{token}")
  Future<Result<StatusResponse>> validateResetPasswordToken({
    @Path("token") required String token,
  });

  @POST("/set-password")
  Future<Result<StatusResponse>> setPassword({
    @BodyExtra("newPassword") required String newPassword,
  });

  @GET("/verify-email")
  Future<Result<VerifyEmailResponse>> verifyEmail({
    @Query("token") required String token,
    @Query("callbackURL") String? callbackURL,
  });

  @POST("/send-verification-email")
  Future<Result<StatusResponse>> sendVerificationEmail({
    @BodyExtra("email") required String email,
    @BodyExtra("callbackURL") String? callbackURL,
  });

  @POST("/change-email")
  Future<Result<StatusResponse>> changeEmail({
    @BodyExtra("newEmail") required String newEmail,
    @BodyExtra("callbackURL") String? callbackURL,
  });

  @POST("/change-password")
  Future<Result<SignUpResponse>> changePassword({
    @BodyExtra("newPassword") required String newPassword,
    @BodyExtra("currentPassword") required String currentPassword,
    @BodyExtra("revokeOtherSessions") bool? revokeOtherSessions,
  });

  @POST("/update-user")
  Future<Result<StatusResponse>> updateUser({
    @BodyExtra("name") String? name,
    @BodyExtra("image") String? image,
  });

  @POST("/delete-user")
  Future<Result<SuccessResponse>> deleteUser({
    @BodyExtra("callbackURL") String? callbackURL,
    @BodyExtra("password") String? password,
    @BodyExtra("token") String? token,
  });

  @GET("/delete-user/callback")
  Future<Result<StatusResponse>> deleteUserCallback({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @GET("/list-accounts")
  Future<Result<List<Account>>> listAccounts();

  @POST("/unlink-account")
  Future<Result<StatusResponse>> unlinkAccount({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/list-sessions")
  Future<Result<List<Session>>> listSessions();

  @POST("/revoke-session")
  Future<Result<StatusResponse>> revokeSession({
    @BodyExtra("token") required String token,
  });

  @POST("/revoke-sessions")
  Future<Result<StatusResponse>> revokeSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/revoke-other-sessions")
  Future<Result<StatusResponse>> revokeOtherSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/callback/{provider}")
  Future<Result<dynamic>> oauthCallback({
    @Path("provider") required String provider,
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/link-social")
  Future<Result<SignInSocialResponse>> linkSocial({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/get-access-token")
  Future<Result<dynamic>> getAccessToken({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/refresh-token")
  Future<Result<dynamic>> refreshToken({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/enable")
  Future<Result<dynamic>> enableTwoFactor({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/disable")
  Future<Result<StatusResponse>> disableTwoFactor({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/get-totp-uri")
  Future<Result<dynamic>> getTotpUri({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/verify-totp")
  Future<Result<dynamic>> verifyTotp({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/send-otp")
  Future<Result<StatusResponse>> sendTwoFactorOtp({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/verify-otp")
  Future<Result<dynamic>> verifyTwoFactorOtp({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/generate-backup-codes")
  Future<Result<dynamic>> generateBackupCodes({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/two-factor/verify-backup-code")
  Future<Result<dynamic>> verifyBackupCode({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/create")
  Future<Result<dynamic>> createOrganization({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/update")
  Future<Result<dynamic>> updateOrganization({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/delete")
  Future<Result<StatusResponse>> deleteOrganization({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/organization/list")
  Future<Result<dynamic>> listOrganizations({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @GET("/organization/get-full-organization")
  Future<Result<dynamic>> getFullOrganization({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/organization/check-slug")
  Future<Result<dynamic>> checkOrganizationSlug({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/set-active")
  Future<Result<StatusResponse>> setActiveOrganization({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/leave")
  Future<Result<StatusResponse>> leaveOrganization({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/organization/get-active-member")
  Future<Result<dynamic>> getActiveOrganizationMember({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @GET("/organization/list-members")
  Future<Result<dynamic>> listOrganizationMembers({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/organization/remove-member")
  Future<Result<StatusResponse>> removeOrganizationMember({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/update-member-role")
  Future<Result<dynamic>> updateOrganizationMemberRole({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/invite-member")
  Future<Result<dynamic>> inviteOrganizationMember({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/organization/get-invitation")
  Future<Result<dynamic>> getOrganizationInvitation({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @GET("/organization/list-invitations")
  Future<Result<dynamic>> listOrganizationInvitations({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @GET("/organization/list-user-invitations")
  Future<Result<dynamic>> listUserOrganizationInvitations({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/organization/accept-invitation")
  Future<Result<dynamic>> acceptOrganizationInvitation({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/reject-invitation")
  Future<Result<StatusResponse>> rejectOrganizationInvitation({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/cancel-invitation")
  Future<Result<StatusResponse>> cancelOrganizationInvitation({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/organization/has-permission")
  Future<Result<dynamic>> organizationHasPermission({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/set-role")
  Future<Result<dynamic>> adminSetRole({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/create-user")
  Future<Result<dynamic>> adminCreateUser({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/admin/list-users")
  Future<Result<dynamic>> adminListUsers({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/admin/list-user-sessions")
  Future<Result<List<Session>>> adminListUserSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/ban-user")
  Future<Result<dynamic>> adminBanUser({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/unban-user")
  Future<Result<dynamic>> adminUnbanUser({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/impersonate-user")
  Future<Result<dynamic>> adminImpersonateUser({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/stop-impersonating")
  Future<Result<dynamic>> adminStopImpersonating({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/revoke-user-session")
  Future<Result<StatusResponse>> adminRevokeUserSession({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/revoke-user-sessions")
  Future<Result<StatusResponse>> adminRevokeUserSessions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/remove-user")
  Future<Result<StatusResponse>> adminRemoveUser({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/set-user-password")
  Future<Result<StatusResponse>> adminSetUserPassword({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/admin/has-permission")
  Future<Result<dynamic>> adminHasPermission({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/api-key/create")
  Future<Result<dynamic>> createApiKey({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/api-key/get")
  Future<Result<dynamic>> getApiKey({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/api-key/update")
  Future<Result<dynamic>> updateApiKey({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/api-key/delete")
  Future<Result<StatusResponse>> deleteApiKey({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/api-key/list")
  Future<Result<dynamic>> listApiKeys({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @GET("/passkey/generate-register-options")
  Future<Result<dynamic>> generatePasskeyRegisterOptions({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/passkey/verify-registration")
  Future<Result<dynamic>> verifyPasskeyRegistration({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/passkey/generate-authenticate-options")
  Future<Result<dynamic>> generatePasskeyAuthenticateOptions({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/passkey/verify-authentication")
  Future<Result<dynamic>> verifyPasskeyAuthentication({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @GET("/passkey/list-user-passkeys")
  Future<Result<dynamic>> listUserPasskeys({
    @Queries() Map<String, dynamic> queries = const {},
  });

  @POST("/passkey/delete-passkey")
  Future<Result<StatusResponse>> deletePasskey({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/passkey/update-passkey")
  Future<Result<dynamic>> updatePasskey({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/device/code")
  Future<Result<dynamic>> createDeviceCode({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/device/token")
  Future<Result<dynamic>> createDeviceToken({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/device/approve")
  Future<Result<dynamic>> approveDevice({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  @POST("/device/deny")
  Future<Result<dynamic>> denyDevice({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });
}

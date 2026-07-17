import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/email/sign_in_email_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/plugins/two_factor/models/two_factor_models.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_two_factor.g.dart";

/// Typed wrapper for the Better Auth `twoFactor()` plugin routes.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthTwoFactor {
  factory BetterAuthTwoFactor(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthTwoFactor;

  /// Enables 2FA. Returns the TOTP URI (render as a QR code) and backup codes.
  @POST("/two-factor/enable")
  Future<Result<TwoFactorEnableResponse>> enable({
    @Body() required TwoFactorEnableBody body,
  });

  /// Disables 2FA. Requires the user's password.
  @POST("/two-factor/disable")
  Future<Result<StatusResponse>> disable({
    @Body() required TwoFactorPasswordBody body,
  });

  /// Returns the current TOTP URI. Requires the user's password.
  @POST("/two-factor/get-totp-uri")
  Future<Result<TotpUriResponse>> getTotpUri({
    @Body() required TwoFactorPasswordBody body,
  });

  /// Verifies a TOTP code, completing sign-in when 2FA gated it.
  @POST("/two-factor/verify-totp")
  Future<Result<SignInEmailResponse>> verifyTotp({
    @Body() required TwoFactorVerifyBody body,
  });

  /// Sends an OTP over the configured channel (e.g. email).
  @POST("/two-factor/send-otp")
  Future<Result<StatusResponse>> sendOtp();

  /// Verifies an OTP code, completing sign-in when 2FA gated it.
  @POST("/two-factor/verify-otp")
  Future<Result<SignInEmailResponse>> verifyOtp({
    @Body() required TwoFactorVerifyBody body,
  });

  /// Regenerates backup codes. Requires the user's password.
  @POST("/two-factor/generate-backup-codes")
  Future<Result<BackupCodesResponse>> generateBackupCodes({
    @Body() required TwoFactorPasswordBody body,
  });

  /// Verifies a backup code, completing sign-in when 2FA gated it.
  @POST("/two-factor/verify-backup-code")
  Future<Result<SignInEmailResponse>> verifyBackupCode({
    @Body() required TwoFactorVerifyBody body,
  });
}

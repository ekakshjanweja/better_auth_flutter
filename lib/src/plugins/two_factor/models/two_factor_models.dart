import "package:freezed_annotation/freezed_annotation.dart";

part "two_factor_models.freezed.dart";
part "two_factor_models.g.dart";

/// Body for enabling two-factor auth. [password] re-authenticates the user.
@freezed
abstract class TwoFactorEnableBody with _$TwoFactorEnableBody {
  const factory TwoFactorEnableBody({
    required String password,
    String? issuer,
  }) = _TwoFactorEnableBody;

  factory TwoFactorEnableBody.fromJson(Map<String, dynamic> json) =>
      _$TwoFactorEnableBodyFromJson(json);
}

/// Body for routes that only need the user's password (disable, get TOTP URI).
@freezed
abstract class TwoFactorPasswordBody with _$TwoFactorPasswordBody {
  const factory TwoFactorPasswordBody({required String password}) =
      _TwoFactorPasswordBody;

  factory TwoFactorPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$TwoFactorPasswordBodyFromJson(json);
}

/// Body for verifying a code (TOTP, OTP, or backup code).
///
/// [trustDevice] skips the second factor on this device for a while.
@freezed
abstract class TwoFactorVerifyBody with _$TwoFactorVerifyBody {
  const factory TwoFactorVerifyBody({required String code, bool? trustDevice}) =
      _TwoFactorVerifyBody;

  factory TwoFactorVerifyBody.fromJson(Map<String, dynamic> json) =>
      _$TwoFactorVerifyBodyFromJson(json);
}

/// Response from enabling 2FA: the TOTP URI to render as a QR code, plus
/// one-time backup codes to show the user once.
@freezed
abstract class TwoFactorEnableResponse with _$TwoFactorEnableResponse {
  const factory TwoFactorEnableResponse({
    required String totpURI,
    @Default(<String>[]) List<String> backupCodes,
  }) = _TwoFactorEnableResponse;

  factory TwoFactorEnableResponse.fromJson(Map<String, dynamic> json) =>
      _$TwoFactorEnableResponseFromJson(json);
}

/// Response carrying just a TOTP URI.
@freezed
abstract class TotpUriResponse with _$TotpUriResponse {
  const factory TotpUriResponse({required String totpURI}) = _TotpUriResponse;

  factory TotpUriResponse.fromJson(Map<String, dynamic> json) =>
      _$TotpUriResponseFromJson(json);
}

/// Response from regenerating backup codes.
@freezed
abstract class BackupCodesResponse with _$BackupCodesResponse {
  const factory BackupCodesResponse({
    @Default(<String>[]) List<String> backupCodes,
    bool? status,
  }) = _BackupCodesResponse;

  factory BackupCodesResponse.fromJson(Map<String, dynamic> json) =>
      _$BackupCodesResponseFromJson(json);
}

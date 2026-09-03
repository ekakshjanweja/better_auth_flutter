import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/core/api/models/session/session_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

import "models/passkey_record.dart";
import "models/passkey_update_response.dart";

part "better_auth_passkey.g.dart";

/// Better Auth [`passkey`](https://www.better-auth.com/docs/plugins/passkey)
/// plugin.
///
/// Mirrors the Better Auth TS client's **two-step** WebAuthn flow:
/// 1. `generateRegistrationOptions` → WebAuthn `create`;
///    `verifyRegistration` with the resulting `response` JSON.
/// 2. `generateAuthenticationOptions` → WebAuthn `get`;
///    `verifyAuthentication` with the resulting `response` JSON — this sets
///    the session on success.
///
/// Combine with [`passkeys`](https://pub.dev/packages/passkeys) or platform
/// Web APIs for the ceremony itself. Requires the `passkey()` plugin on your
/// Better Auth server.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthPasskey {
  factory BetterAuthPasskey(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthPasskey;

  /// `GET /passkey/generate-register-options`.
  ///
  /// Returns the raw options JSON — feed it to your WebAuthn ceremony, then
  /// pass the resulting `response` JSON to [verifyRegistration].
  @GET("/passkey/generate-register-options")
  Future<Result<dynamic>> generateRegistrationOptions({
    @Query("name") String? name,
    @Query("authenticatorAttachment") String? authenticatorAttachment,
  });

  /// `POST /passkey/verify-registration`.
  ///
  /// [body] must contain `response` (`RegistrationResponseJSON`) and
  /// optionally `name`.
  @POST("/passkey/verify-registration")
  Future<Result<PasskeyRecord>> verifyRegistration({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  /// `GET /passkey/generate-authenticate-options`.
  ///
  /// Returns the raw options JSON — feed it to your WebAuthn ceremony, then
  /// pass the resulting `response` JSON to [verifyAuthentication].
  @GET("/passkey/generate-authenticate-options")
  Future<Result<dynamic>> generateAuthenticationOptions();

  /// `POST /passkey/verify-authentication` — sets the session on success.
  ///
  /// [body] must contain `response` (`AuthenticationResponseJSON`).
  @POST("/passkey/verify-authentication")
  Future<Result<SessionResponse>> verifyAuthentication({
    @Body(nullToAbsent: true) Map<String, dynamic> body = const {},
  });

  /// `GET /passkey/list-user-passkeys`.
  @GET("/passkey/list-user-passkeys")
  Future<Result<List<PasskeyRecord>>> listUserPasskeys();

  /// `POST /passkey/delete-passkey`.
  @POST("/passkey/delete-passkey")
  Future<Result<StatusResponse>> deletePasskey({
    @BodyExtra("id") required String id,
  });

  /// `POST /passkey/update-passkey`.
  @POST("/passkey/update-passkey")
  Future<Result<PasskeyUpdateResponse>> updatePasskey({
    @BodyExtra("id") required String id,
    @BodyExtra("name") required String name,
  });
}

import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/email/sign_in_email_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/core/api/models/session/session_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_multi_session.g.dart";

/// Typed wrapper for the Better Auth `multiSession()` plugin.
///
/// Multiple accounts signed in on one device, keyed by session cookie. This is
/// a cookie-mode feature; it does not apply in bearer mode.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthMultiSession {
  factory BetterAuthMultiSession(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthMultiSession;

  /// Lists every account signed in on this device.
  @GET("/multi-session/list-device-sessions")
  Future<Result<List<SessionResponse>>> listDeviceSessions();

  /// Switches the active account to the one with [sessionToken].
  @POST("/multi-session/set-active")
  Future<Result<SignInEmailResponse>> setActive({
    @Body() required Map<String, dynamic> body,
  });

  /// Signs out the account with [sessionToken], leaving the others.
  @POST("/multi-session/revoke")
  Future<Result<StatusResponse>> revoke({
    @Body() required Map<String, dynamic> body,
  });
}

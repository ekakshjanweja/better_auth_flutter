import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/session/session_response.dart";
import "package:better_auth_flutter/src/plugins/one_time_token/models/one_time_token_models.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_one_time_token.g.dart";

/// Typed wrapper for the Better Auth `oneTimeToken()` plugin.
///
/// Generates a short-lived token bound to the current session, which another
/// context can exchange for that session. New HTTP surface.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthOneTimeToken {
  factory BetterAuthOneTimeToken(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthOneTimeToken;

  /// Generates a one-time token for the current session.
  @GET("/one-time-token/generate")
  Future<Result<OneTimeTokenResponse>> generate();

  /// Exchanges a token for its session.
  @POST("/one-time-token/verify")
  Future<Result<SessionResponse>> verify({
    @Body() required Map<String, dynamic> body,
  });
}

import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/email/sign_in_email_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/success_response/success_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_anonymous.g.dart";

/// Typed wrapper for the Better Auth `anonymous()` plugin.
///
/// These routes do not exist in the core client — the anonymous plugin is new
/// HTTP surface, not a re-typing of existing routes.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthAnonymous {
  factory BetterAuthAnonymous(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthAnonymous;

  /// Creates a guest session. The returned user has `isAnonymous == true`.
  @POST("/sign-in/anonymous")
  Future<Result<SignInEmailResponse>> signIn();

  /// Deletes the current anonymous user (`{success}`).
  @POST("/delete-anonymous-user")
  Future<Result<SuccessResponse>> deleteUser();
}

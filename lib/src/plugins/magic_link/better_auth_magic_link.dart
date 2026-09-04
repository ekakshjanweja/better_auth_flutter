import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/email/sign_in_email_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/plugins/magic_link/models/magic_link_models.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_magic_link.g.dart";

/// Typed wrapper for the Better Auth `magicLink()` plugin.
///
/// These routes are new HTTP surface, not present in the core client.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthMagicLink {
  factory BetterAuthMagicLink(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthMagicLink;

  /// Sends a sign-in link to the given email. Delivery is handled by the
  /// server; the link's callback carries the token back to the app.
  ///
  /// Since server 1.7, if the account's email was never confirmed and the
  /// user first signs in here instead, the server treats proven mailbox
  /// control as truth: it removes any unproven password/linked accounts and
  /// revokes sessions. Tell the user to set a new password via reset flow.
  @POST("/sign-in/magic-link")
  Future<Result<StatusResponse>> signIn({@Body() required MagicLinkBody body});

  /// Verifies a magic-link token, completing sign-in.
  @GET("/magic-link/verify")
  Future<Result<SignInEmailResponse>> verify({
    @Query("token") required String token,
    @Query("callbackURL") String? callbackURL,
  });
}

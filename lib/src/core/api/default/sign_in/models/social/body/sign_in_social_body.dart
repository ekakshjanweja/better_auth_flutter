import "package:better_auth_flutter/src/core/api/default/sign_in/models/social/id_token/social_id_token_body.dart";
import "package:better_auth_flutter/src/core/api/default/sign_in/models/social/social_provider.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_social_body.freezed.dart";
part "sign_in_social_body.g.dart";

/// Request body for `/sign-in/social`.
///
/// Two flows share this body:
///
/// - **Native ID token** (Google, Apple): obtain the token with the provider's
///   own SDK and set [idToken]. No browser, and it works in both cookie and
///   bearer mode.
/// - **Web redirect**: leave [idToken] null; the response carries a `url` to
///   open in a browser.
@freezed
abstract class SignInSocialBody with _$SignInSocialBody {
  const factory SignInSocialBody({
    required String provider,
    SocialIdTokenBody? idToken,
    String? callbackURL,
    String? newUserCallbackURL,
    String? errorCallbackURL,
    bool? disableRedirect,
    List<String>? scopes,
    bool? requestSignUp,
    String? loginHint,
  }) = _SignInSocialBody;

  /// Builds a body from a typed [SocialProvider].
  factory SignInSocialBody.of({
    required SocialProvider provider,
    SocialIdTokenBody? idToken,
    String? callbackURL,
    String? newUserCallbackURL,
    String? errorCallbackURL,
    bool? disableRedirect,
    List<String>? scopes,
    bool? requestSignUp,
    String? loginHint,
  }) => SignInSocialBody(
    provider: provider.id,
    idToken: idToken,
    callbackURL: callbackURL,
    newUserCallbackURL: newUserCallbackURL,
    errorCallbackURL: errorCallbackURL,
    disableRedirect: disableRedirect,
    scopes: scopes,
    requestSignUp: requestSignUp,
    loginHint: loginHint,
  );

  factory SignInSocialBody.fromJson(Map<String, dynamic> json) =>
      _$SignInSocialBodyFromJson(json);
}

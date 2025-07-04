import "package:better_auth_flutter/src/modules/sign_in/models/social/common/sign_in_id_token_body.dart";
import "package:better_auth_flutter/src/modules/sign_in/models/social/common/social_provider.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_social_request.freezed.dart";
part "sign_in_social_request.g.dart";

@freezed
abstract class SignInSocialRequest with _$SignInSocialRequest {
  const factory SignInSocialRequest({
    required SocialProvider provider,
    String? callbackUrl,
    String? newUserCallbackURL,
    String? errorCallbackURL,
    bool? disableRedirect,
    List<String>? scopes,
    SocialIdTokenBody? idToken,
    String? requestSignUp,
    String? loginHint,
  }) = _SignInSocialRequest;

  factory SignInSocialRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInSocialRequestFromJson(json);
}

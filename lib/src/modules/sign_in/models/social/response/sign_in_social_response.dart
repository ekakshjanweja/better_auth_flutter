import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_social_response.freezed.dart";
part "sign_in_social_response.g.dart";

@freezed
abstract class SignInSocialResponse with _$SignInSocialResponse {
  const factory SignInSocialResponse({
    @Default(false) bool redirect,
    @Default("") String token,
    @Default("") String url,
    String? required,
  }) = _SignInSocialResponse;

  factory SignInSocialResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInSocialResponseFromJson(json);
}

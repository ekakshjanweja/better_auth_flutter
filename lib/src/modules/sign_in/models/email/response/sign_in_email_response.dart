import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_email_response.freezed.dart";
part "sign_in_email_response.g.dart";

@freezed
abstract class SignInEmailResponse with _$SignInEmailResponse {
  const factory SignInEmailResponse({
    @Default(false) bool redirect,
    required String token,
    String? url,
    required User user,
  }) = _SignInEmailResponse;

  factory SignInEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInEmailResponseFromJson(json);
}

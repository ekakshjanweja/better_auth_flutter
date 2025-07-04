import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_email_request.freezed.dart";
part "sign_in_email_request.g.dart";

@freezed
abstract class SignInEmailRequest with _$SignInEmailRequest {
  const factory SignInEmailRequest({
    required String email,
    required String password,
    String? callbackURL,
    String? rememberMe,
  }) = _SignInEmailRequest;

  factory SignInEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInEmailRequestFromJson(json);
}

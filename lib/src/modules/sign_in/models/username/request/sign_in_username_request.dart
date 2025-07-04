import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_username_request.freezed.dart";
part "sign_in_username_request.g.dart";

@freezed
abstract class SignInUsernameRequest with _$SignInUsernameRequest {
  const factory SignInUsernameRequest({
    required String username,
    required String password,
    String? rememberMe,
  }) = _SignInUsernameRequest;

  factory SignInUsernameRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInUsernameRequestFromJson(json);
}

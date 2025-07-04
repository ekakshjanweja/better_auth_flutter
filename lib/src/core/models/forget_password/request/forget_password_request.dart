import "package:freezed_annotation/freezed_annotation.dart";

part "forget_password_request.freezed.dart";
part "forget_password_request.g.dart";

@freezed
abstract class ForgetPasswordRequest with _$ForgetPasswordRequest {
  const factory ForgetPasswordRequest({
    required String email,
    String? redirectTo,
  }) = _ForgetPasswordRequest;

  factory ForgetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestFromJson(json);
}

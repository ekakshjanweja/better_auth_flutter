import "package:freezed_annotation/freezed_annotation.dart";

part "reset_password_request.freezed.dart";
part "reset_password_request.g.dart";

@freezed
abstract class ResetPasswordRequest with _$ResetPasswordRequest {
  const factory ResetPasswordRequest({
    required String newPassword,
    String? token,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);
}

import "package:freezed_annotation/freezed_annotation.dart";

part "change_password_request.freezed.dart";
part "change_password_request.g.dart";

@freezed
abstract class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    required String newPassword,
    required String currentPassword,
    String? revokeOtherSessions,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
}

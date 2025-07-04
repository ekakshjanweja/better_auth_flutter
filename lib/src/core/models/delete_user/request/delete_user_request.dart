import "package:freezed_annotation/freezed_annotation.dart";

part "delete_user_request.freezed.dart";
part "delete_user_request.g.dart";

@freezed
abstract class DeleteUserRequest with _$DeleteUserRequest {
  const factory DeleteUserRequest({
    String? callbackURL,
    String? password,
    String? token,
  }) = _DeleteUserRequest;

  factory DeleteUserRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserRequestFromJson(json);
}

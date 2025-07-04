import "package:freezed_annotation/freezed_annotation.dart";

part "update_user_request.freezed.dart";
part "update_user_request.g.dart";

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({String? name, String? image}) =
      _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}

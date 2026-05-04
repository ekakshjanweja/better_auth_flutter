import "package:better_auth_flutter/source/core/models/user/user.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "user_response.freezed.dart";
part "user_response.g.dart";

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({required User user}) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

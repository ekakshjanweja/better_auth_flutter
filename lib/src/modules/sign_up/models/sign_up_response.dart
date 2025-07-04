import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_up_response.freezed.dart";
part "sign_up_response.g.dart";

@freezed
abstract class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    String? token,
    required User user,
    @Default(true) bool status,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

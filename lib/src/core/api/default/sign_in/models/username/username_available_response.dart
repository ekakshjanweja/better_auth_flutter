import "package:freezed_annotation/freezed_annotation.dart";

part "username_available_response.freezed.dart";
part "username_available_response.g.dart";

/// Response of Better Auth `POST /is-username-available`.
@freezed
abstract class UsernameAvailableResponse with _$UsernameAvailableResponse {
  const factory UsernameAvailableResponse({@Default(false) bool available}) =
      _UsernameAvailableResponse;

  factory UsernameAvailableResponse.fromJson(Map<String, dynamic> json) =>
      _$UsernameAvailableResponseFromJson(json);
}

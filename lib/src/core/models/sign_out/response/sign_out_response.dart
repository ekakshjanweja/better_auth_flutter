import "package:freezed_annotation/freezed_annotation.dart";

part "sign_out_response.freezed.dart";
part "sign_out_response.g.dart";

@freezed
abstract class SignOutResponse with _$SignOutResponse {
  const factory SignOutResponse({@Default(false) bool success}) =
      _SignOutResponse;

  factory SignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$SignOutResponseFromJson(json);
}

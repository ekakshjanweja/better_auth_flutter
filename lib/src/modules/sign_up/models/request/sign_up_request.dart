import "package:freezed_annotation/freezed_annotation.dart";

part "sign_up_request.freezed.dart";
part "sign_up_request.g.dart";

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String name,
    required String email,
    required String password,
    String? callbackURL,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}

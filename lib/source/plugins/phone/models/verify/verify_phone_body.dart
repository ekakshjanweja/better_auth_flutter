import "package:freezed_annotation/freezed_annotation.dart";

part "verify_phone_body.freezed.dart";

part "verify_phone_body.g.dart";

@freezed
abstract class VerifyPhoneBody with _$VerifyPhoneBody {
  const factory VerifyPhoneBody({
    required String phoneNumber,
    required String code,
    String? disableSession,
    String? updatePhoneNumber,
  }) = _VerifyPhoneBody;

  factory VerifyPhoneBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneBodyFromJson(json);
}

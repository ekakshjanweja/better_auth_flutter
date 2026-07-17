import "package:freezed_annotation/freezed_annotation.dart";

part "send_otp_response.freezed.dart";
part "send_otp_response.g.dart";

@freezed
abstract class SendOTPResponse with _$SendOTPResponse {
  const factory SendOTPResponse({required String message}) = _SendOTPResponse;

  factory SendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$SendOTPResponseFromJson(json);
}

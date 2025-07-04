import "package:freezed_annotation/freezed_annotation.dart";

part "send_verification_email_request.freezed.dart";
part "send_verification_email_request.g.dart";

@freezed
abstract class SendVerificationEmailRequest
    with _$SendVerificationEmailRequest {
  const factory SendVerificationEmailRequest({
    required String email,
    String? callbackURL,
  }) = _SendVerificationEmailRequest;

  factory SendVerificationEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationEmailRequestFromJson(json);
}

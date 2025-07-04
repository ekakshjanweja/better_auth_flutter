// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendVerificationEmailRequest _$SendVerificationEmailRequestFromJson(
  Map<String, dynamic> json,
) => _SendVerificationEmailRequest(
  email: json['email'] as String,
  callbackURL: json['callbackURL'] as String?,
);

Map<String, dynamic> _$SendVerificationEmailRequestToJson(
  _SendVerificationEmailRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'callbackURL': instance.callbackURL,
};

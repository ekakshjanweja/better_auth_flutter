// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyEmailResponse _$VerifyEmailResponseFromJson(Map<String, dynamic> json) =>
    _VerifyEmailResponse(
      user:
          json['user'] == null
              ? null
              : User.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as bool,
      required: json['required'] as String?,
    );

Map<String, dynamic> _$VerifyEmailResponseToJson(
  _VerifyEmailResponse instance,
) => <String, dynamic>{
  'user': instance.user,
  'status': instance.status,
  'required': instance.required,
};

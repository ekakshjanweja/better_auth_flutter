// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyPhoneBody _$VerifyPhoneBodyFromJson(Map<String, dynamic> json) =>
    _VerifyPhoneBody(
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String,
      disableSession: json['disableSession'] as String?,
      updatePhoneNumber: json['updatePhoneNumber'] as String?,
    );

Map<String, dynamic> _$VerifyPhoneBodyToJson(_VerifyPhoneBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
      'disableSession': instance.disableSession,
      'updatePhoneNumber': instance.updatePhoneNumber,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_phone_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPhonePasswordBody _$ResetPhonePasswordBodyFromJson(
  Map<String, dynamic> json,
) => _ResetPhonePasswordBody(
  otp: json['otp'] as String,
  phoneNumber: json['phoneNumber'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$ResetPhonePasswordBodyToJson(
  _ResetPhonePasswordBody instance,
) => <String, dynamic>{
  'otp': instance.otp,
  'phoneNumber': instance.phoneNumber,
  'newPassword': instance.newPassword,
};

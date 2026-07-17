// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_phone_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInPhoneBody _$SignInPhoneBodyFromJson(Map<String, dynamic> json) =>
    _SignInPhoneBody(
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      rememberMe: json['rememberMe'] as bool?,
    );

Map<String, dynamic> _$SignInPhoneBodyToJson(_SignInPhoneBody instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
    };

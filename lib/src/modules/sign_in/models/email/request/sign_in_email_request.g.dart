// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInEmailRequest _$SignInEmailRequestFromJson(Map<String, dynamic> json) =>
    _SignInEmailRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      callbackURL: json['callbackURL'] as String?,
      rememberMe: json['rememberMe'] as String?,
    );

Map<String, dynamic> _$SignInEmailRequestToJson(_SignInEmailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'callbackURL': instance.callbackURL,
      'rememberMe': instance.rememberMe,
    };

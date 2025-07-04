// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_username_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInUsernameRequest _$SignInUsernameRequestFromJson(
  Map<String, dynamic> json,
) => _SignInUsernameRequest(
  username: json['username'] as String,
  password: json['password'] as String,
  rememberMe: json['rememberMe'] as String?,
);

Map<String, dynamic> _$SignInUsernameRequestToJson(
  _SignInUsernameRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'rememberMe': instance.rememberMe,
};

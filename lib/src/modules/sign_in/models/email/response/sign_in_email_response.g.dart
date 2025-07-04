// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInEmailResponse _$SignInEmailResponseFromJson(Map<String, dynamic> json) =>
    _SignInEmailResponse(
      redirect: json['redirect'] as bool? ?? false,
      token: json['token'] as String,
      url: json['url'] as String?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInEmailResponseToJson(
  _SignInEmailResponse instance,
) => <String, dynamic>{
  'redirect': instance.redirect,
  'token': instance.token,
  'url': instance.url,
  'user': instance.user,
};

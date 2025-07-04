// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_social_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInSocialResponse _$SignInSocialResponseFromJson(
  Map<String, dynamic> json,
) => _SignInSocialResponse(
  redirect: json['redirect'] as bool? ?? false,
  token: json['token'] as String? ?? "",
  url: json['url'] as String? ?? "",
  required: json['required'] as String?,
);

Map<String, dynamic> _$SignInSocialResponseToJson(
  _SignInSocialResponse instance,
) => <String, dynamic>{
  'redirect': instance.redirect,
  'token': instance.token,
  'url': instance.url,
  'required': instance.required,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_id_token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialIdTokenBody _$SocialIdTokenBodyFromJson(Map<String, dynamic> json) =>
    _SocialIdTokenBody(
      token: json['token'] as String,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$SocialIdTokenBodyToJson(_SocialIdTokenBody instance) =>
    <String, dynamic>{
      'token': instance.token,
      'accessToken': instance.accessToken,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_id_token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialIdTokenBody _$SocialIdTokenBodyFromJson(Map<String, dynamic> json) =>
    _SocialIdTokenBody(
      token: json['token'] as String,
      nonce: json['nonce'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SocialIdTokenBodyToJson(_SocialIdTokenBody instance) =>
    <String, dynamic>{
      'token': instance.token,
      'nonce': instance.nonce,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt,
    };

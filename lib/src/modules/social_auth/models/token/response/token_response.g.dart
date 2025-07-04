// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    _TokenResponse(
      tokenType: json['tokenType'] as String,
      idToken: json['idToken'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      accessTokenExpiresAt:
          json['accessTokenExpiresAt'] == null
              ? null
              : DateTime.parse(json['accessTokenExpiresAt'] as String),
      refreshTokenExpiresAt:
          json['refreshTokenExpiresAt'] == null
              ? null
              : DateTime.parse(json['refreshTokenExpiresAt'] as String),
    );

Map<String, dynamic> _$TokenResponseToJson(
  _TokenResponse instance,
) => <String, dynamic>{
  'tokenType': instance.tokenType,
  'idToken': instance.idToken,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toIso8601String(),
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt?.toIso8601String(),
};

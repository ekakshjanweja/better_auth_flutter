// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  id: json['id'] as String,
  providerId: json['providerId'] as String,
  accountId: json['accountId'] as String,
  userId: json['userId'] as String,
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  idToken: json['idToken'] as String?,
  accessTokenExpiresAt: json['accessTokenExpiresAt'] == null
      ? null
      : DateTime.parse(json['accessTokenExpiresAt'] as String),
  refreshTokenExpiresAt: json['refreshTokenExpiresAt'] == null
      ? null
      : DateTime.parse(json['refreshTokenExpiresAt'] as String),
  scope: json['scope'] as String?,
  password: json['password'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'id': instance.id,
  'providerId': instance.providerId,
  'accountId': instance.accountId,
  'userId': instance.userId,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'idToken': instance.idToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt?.toIso8601String(),
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt?.toIso8601String(),
  'scope': instance.scope,
  'password': instance.password,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  id: json['id'] as String,
  token: json['token'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  ipAddress: json['ipAddress'] as String?,
  userAgent: json['userAgent'] as String?,
  userId: json['userId'] as String,
  impersonatedBy: json['impersonatedBy'] as String?,
  activeOrganizationId: json['activeOrganizationId'] as String?,
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'id': instance.id,
  'token': instance.token,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'ipAddress': instance.ipAddress,
  'userAgent': instance.userAgent,
  'userId': instance.userId,
  'impersonatedBy': instance.impersonatedBy,
  'activeOrganizationId': instance.activeOrganizationId,
};

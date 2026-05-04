// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Verification _$VerificationFromJson(Map<String, dynamic> json) =>
    _Verification(
      id: json['id'] as String,
      identifier: json['identifier'] as String,
      value: json['value'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$VerificationToJson(_Verification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'value': instance.value,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

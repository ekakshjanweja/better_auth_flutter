// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialAccountResponse _$SocialAccountResponseFromJson(
  Map<String, dynamic> json,
) => _SocialAccountResponse(
  id: json['id'] as String,
  provider: json['provider'] as String,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$SocialAccountResponseToJson(
  _SocialAccountResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'provider': instance.provider,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

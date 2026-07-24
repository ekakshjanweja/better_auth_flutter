// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiKey _$ApiKeyFromJson(Map<String, dynamic> json) => _ApiKey(
  id: json['id'] as String,
  name: json['name'] as String?,
  start: json['start'] as String?,
  prefix: json['prefix'] as String?,
  key: json['key'] as String?,
  userId: json['userId'] as String?,
  enabled: json['enabled'] as bool? ?? true,
  remaining: (json['remaining'] as num?)?.toInt(),
  refillAmount: (json['refillAmount'] as num?)?.toInt(),
  refillInterval: (json['refillInterval'] as num?)?.toInt(),
  rateLimitEnabled: json['rateLimitEnabled'] as bool?,
  rateLimitMax: (json['rateLimitMax'] as num?)?.toInt(),
  rateLimitTimeWindow: (json['rateLimitTimeWindow'] as num?)?.toInt(),
  requestCount: (json['requestCount'] as num?)?.toInt(),
  lastRequest: json['lastRequest'] == null
      ? null
      : DateTime.parse(json['lastRequest'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ApiKeyToJson(_ApiKey instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'start': instance.start,
  'prefix': instance.prefix,
  'key': instance.key,
  'userId': instance.userId,
  'enabled': instance.enabled,
  'remaining': instance.remaining,
  'refillAmount': instance.refillAmount,
  'refillInterval': instance.refillInterval,
  'rateLimitEnabled': instance.rateLimitEnabled,
  'rateLimitMax': instance.rateLimitMax,
  'rateLimitTimeWindow': instance.rateLimitTimeWindow,
  'requestCount': instance.requestCount,
  'lastRequest': instance.lastRequest?.toIso8601String(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'metadata': instance.metadata,
};

_CreateApiKeyBody _$CreateApiKeyBodyFromJson(Map<String, dynamic> json) =>
    _CreateApiKeyBody(
      name: json['name'] as String?,
      prefix: json['prefix'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      remaining: (json['remaining'] as num?)?.toInt(),
      refillAmount: (json['refillAmount'] as num?)?.toInt(),
      refillInterval: (json['refillInterval'] as num?)?.toInt(),
      rateLimitMax: (json['rateLimitMax'] as num?)?.toInt(),
      rateLimitTimeWindow: (json['rateLimitTimeWindow'] as num?)?.toInt(),
      rateLimitEnabled: json['rateLimitEnabled'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CreateApiKeyBodyToJson(_CreateApiKeyBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'prefix': instance.prefix,
      'expiresIn': instance.expiresIn,
      'remaining': instance.remaining,
      'refillAmount': instance.refillAmount,
      'refillInterval': instance.refillInterval,
      'rateLimitMax': instance.rateLimitMax,
      'rateLimitTimeWindow': instance.rateLimitTimeWindow,
      'rateLimitEnabled': instance.rateLimitEnabled,
      'metadata': instance.metadata,
    };

_UpdateApiKeyBody _$UpdateApiKeyBodyFromJson(Map<String, dynamic> json) =>
    _UpdateApiKeyBody(
      keyId: json['keyId'] as String,
      name: json['name'] as String?,
      enabled: json['enabled'] as bool?,
      remaining: (json['remaining'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UpdateApiKeyBodyToJson(_UpdateApiKeyBody instance) =>
    <String, dynamic>{
      'keyId': instance.keyId,
      'name': instance.name,
      'enabled': instance.enabled,
      'remaining': instance.remaining,
      'metadata': instance.metadata,
    };

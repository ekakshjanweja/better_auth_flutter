// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasskeyRecord _$PasskeyRecordFromJson(Map<String, dynamic> json) =>
    _PasskeyRecord(
      id: json['id'] as String,
      name: json['name'] as String?,
      userId: json['userId'] as String,
      credentialID: json['credentialID'] as String,
      publicKey: json['publicKey'] as String,
      counter: _counterFromJson(json['counter']),
      deviceType: json['deviceType'] as String,
      backedUp: json['backedUp'] as bool,
      transports: json['transports'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      aaguid: json['aaguid'] as String?,
    );

Map<String, dynamic> _$PasskeyRecordToJson(_PasskeyRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'credentialID': instance.credentialID,
      'publicKey': instance.publicKey,
      'counter': instance.counter,
      'deviceType': instance.deviceType,
      'backedUp': instance.backedUp,
      'transports': instance.transports,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'aaguid': instance.aaguid,
    };

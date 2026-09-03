// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasskeyUpdateResponse _$PasskeyUpdateResponseFromJson(
  Map<String, dynamic> json,
) => _PasskeyUpdateResponse(
  passkey: PasskeyRecord.fromJson(json['passkey'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PasskeyUpdateResponseToJson(
  _PasskeyUpdateResponse instance,
) => <String, dynamic>{'passkey': instance.passkey};

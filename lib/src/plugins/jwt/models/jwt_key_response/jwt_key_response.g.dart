// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_key_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JwtKeyResponse _$JwtKeyResponseFromJson(Map<String, dynamic> json) =>
    _JwtKeyResponse(
      keys: (json['keys'] as List<dynamic>)
          .map((e) => JwtKey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JwtKeyResponseToJson(_JwtKeyResponse instance) =>
    <String, dynamic>{'keys': instance.keys};

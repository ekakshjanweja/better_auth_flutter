// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JwtKey _$JwtKeyFromJson(Map<String, dynamic> json) => _JwtKey(
  kid: json['kid'] as String,
  kty: json['kty'] as String,
  alg: json['alg'] as String,
  use: json['use'] as String?,
  n: json['n'] as String?,
  e: json['e'] as String?,
  crv: json['crv'] as String?,
  x: json['x'] as String?,
  y: json['y'] as String?,
);

Map<String, dynamic> _$JwtKeyToJson(_JwtKey instance) => <String, dynamic>{
  'kid': instance.kid,
  'kty': instance.kty,
  'alg': instance.alg,
  'use': instance.use,
  'n': instance.n,
  'e': instance.e,
  'crv': instance.crv,
  'x': instance.x,
  'y': instance.y,
};

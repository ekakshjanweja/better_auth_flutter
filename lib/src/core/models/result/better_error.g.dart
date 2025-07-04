// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'better_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BetterError _$BetterErrorFromJson(Map<String, dynamic> json) => _BetterError(
  code: json['code'] as String? ?? "ERROR",
  message: json['message'] as String,
  stack: json['stack'] as String?,
);

Map<String, dynamic> _$BetterErrorToJson(_BetterError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'stack': instance.stack,
    };

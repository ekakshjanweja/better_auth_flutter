// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_permission_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckPermissionResponse _$CheckPermissionResponseFromJson(
  Map<String, dynamic> json,
) => _CheckPermissionResponse(
  success: json['success'] as bool,
  error: json['error'] as String?,
);

Map<String, dynamic> _$CheckPermissionResponseToJson(
  _CheckPermissionResponse instance,
) => <String, dynamic>{'success': instance.success, 'error': instance.error};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) =>
    _SuccessResponse(
      success: json['success'] as bool,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SuccessResponseToJson(_SuccessResponse instance) =>
    <String, dynamic>{'success': instance.success, 'message': instance.message};

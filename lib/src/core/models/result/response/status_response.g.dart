// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) =>
    _StatusResponse(
      status: json['status'] as bool,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StatusResponseToJson(_StatusResponse instance) =>
    <String, dynamic>{'status': instance.status, 'message': instance.message};

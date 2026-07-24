// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    _SignUpResponse(
      token: json['token'] as String?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as bool? ?? true,
    );

Map<String, dynamic> _$SignUpResponseToJson(_SignUpResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'status': instance.status,
    };

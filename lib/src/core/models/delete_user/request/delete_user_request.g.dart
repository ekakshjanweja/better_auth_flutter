// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteUserRequest _$DeleteUserRequestFromJson(Map<String, dynamic> json) =>
    _DeleteUserRequest(
      callbackURL: json['callbackURL'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$DeleteUserRequestToJson(_DeleteUserRequest instance) =>
    <String, dynamic>{
      'callbackURL': instance.callbackURL,
      'password': instance.password,
      'token': instance.token,
    };

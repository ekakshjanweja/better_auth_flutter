// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordRequest _$ChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordRequest(
  newPassword: json['newPassword'] as String,
  currentPassword: json['currentPassword'] as String,
  revokeOtherSessions: json['revokeOtherSessions'] as String?,
);

Map<String, dynamic> _$ChangePasswordRequestToJson(
  _ChangePasswordRequest instance,
) => <String, dynamic>{
  'newPassword': instance.newPassword,
  'currentPassword': instance.currentPassword,
  'revokeOtherSessions': instance.revokeOtherSessions,
};

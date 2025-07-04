// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_email_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeEmailRequest _$ChangeEmailRequestFromJson(Map<String, dynamic> json) =>
    _ChangeEmailRequest(
      newEmail: json['newEmail'] as String,
      callbackURL: json['callbackURL'] as String?,
    );

Map<String, dynamic> _$ChangeEmailRequestToJson(_ChangeEmailRequest instance) =>
    <String, dynamic>{
      'newEmail': instance.newEmail,
      'callbackURL': instance.callbackURL,
    };

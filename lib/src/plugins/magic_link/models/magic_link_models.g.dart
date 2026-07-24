// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magic_link_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MagicLinkBody _$MagicLinkBodyFromJson(Map<String, dynamic> json) =>
    _MagicLinkBody(
      email: json['email'] as String,
      name: json['name'] as String?,
      callbackURL: json['callbackURL'] as String?,
      newUserCallbackURL: json['newUserCallbackURL'] as String?,
      errorCallbackURL: json['errorCallbackURL'] as String?,
    );

Map<String, dynamic> _$MagicLinkBodyToJson(_MagicLinkBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'callbackURL': instance.callbackURL,
      'newUserCallbackURL': instance.newUserCallbackURL,
      'errorCallbackURL': instance.errorCallbackURL,
    };

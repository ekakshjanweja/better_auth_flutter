// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialLinkResponse _$SocialLinkResponseFromJson(Map<String, dynamic> json) =>
    _SocialLinkResponse(
      url: json['url'] as String,
      redirect: json['redirect'] as bool? ?? false,
    );

Map<String, dynamic> _$SocialLinkResponseToJson(_SocialLinkResponse instance) =>
    <String, dynamic>{'url': instance.url, 'redirect': instance.redirect};

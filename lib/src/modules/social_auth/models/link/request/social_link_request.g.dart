// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_link_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialLinkRequest _$SocialLinkRequestFromJson(Map<String, dynamic> json) =>
    _SocialLinkRequest(
      callbackURL: json['callbackURL'] as String?,
      scopes: json['scopes'] as String?,
      provider: $enumDecode(_$SocialProviderEnumMap, json['provider']),
    );

Map<String, dynamic> _$SocialLinkRequestToJson(_SocialLinkRequest instance) =>
    <String, dynamic>{
      'callbackURL': instance.callbackURL,
      'scopes': instance.scopes,
      'provider': _$SocialProviderEnumMap[instance.provider]!,
    };

const _$SocialProviderEnumMap = {
  SocialProvider.apple: 'apple',
  SocialProvider.discord: 'discord',
  SocialProvider.facebook: 'facebook',
  SocialProvider.github: 'github',
  SocialProvider.google: 'google',
  SocialProvider.linkedin: 'linkedin',
  SocialProvider.microsoft: 'microsoft',
  SocialProvider.spotify: 'spotify',
  SocialProvider.twitch: 'twitch',
  SocialProvider.x: 'twitter',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_social_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInSocialRequest _$SignInSocialRequestFromJson(
  Map<String, dynamic> json,
) => _SignInSocialRequest(
  provider: $enumDecode(_$SocialProviderEnumMap, json['provider']),
  callbackUrl: json['callbackUrl'] as String?,
  newUserCallbackURL: json['newUserCallbackURL'] as String?,
  errorCallbackURL: json['errorCallbackURL'] as String?,
  disableRedirect: json['disableRedirect'] as bool?,
  scopes: (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  idToken:
      json['idToken'] == null
          ? null
          : SocialIdTokenBody.fromJson(json['idToken'] as Map<String, dynamic>),
  requestSignUp: json['requestSignUp'] as String?,
  loginHint: json['loginHint'] as String?,
);

Map<String, dynamic> _$SignInSocialRequestToJson(
  _SignInSocialRequest instance,
) => <String, dynamic>{
  'provider': _$SocialProviderEnumMap[instance.provider]!,
  'callbackUrl': instance.callbackUrl,
  'newUserCallbackURL': instance.newUserCallbackURL,
  'errorCallbackURL': instance.errorCallbackURL,
  'disableRedirect': instance.disableRedirect,
  'scopes': instance.scopes,
  'idToken': instance.idToken,
  'requestSignUp': instance.requestSignUp,
  'loginHint': instance.loginHint,
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

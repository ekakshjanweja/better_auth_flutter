// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_social_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInSocialBody _$SignInSocialBodyFromJson(Map<String, dynamic> json) =>
    _SignInSocialBody(
      provider: json['provider'] as String,
      idToken: json['idToken'] == null
          ? null
          : SocialIdTokenBody.fromJson(json['idToken'] as Map<String, dynamic>),
      callbackURL: json['callbackURL'] as String?,
      newUserCallbackURL: json['newUserCallbackURL'] as String?,
      errorCallbackURL: json['errorCallbackURL'] as String?,
      disableRedirect: json['disableRedirect'] as bool?,
      scopes: (json['scopes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      requestSignUp: json['requestSignUp'] as bool?,
      loginHint: json['loginHint'] as String?,
    );

Map<String, dynamic> _$SignInSocialBodyToJson(_SignInSocialBody instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'idToken': instance.idToken,
      'callbackURL': instance.callbackURL,
      'newUserCallbackURL': instance.newUserCallbackURL,
      'errorCallbackURL': instance.errorCallbackURL,
      'disableRedirect': instance.disableRedirect,
      'scopes': instance.scopes,
      'requestSignUp': instance.requestSignUp,
      'loginHint': instance.loginHint,
    };

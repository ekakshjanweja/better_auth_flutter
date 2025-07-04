// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialTokenRequest _$SocialTokenRequestFromJson(Map<String, dynamic> json) =>
    _SocialTokenRequest(
      providerId: json['providerId'] as String,
      accountId: json['accountId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$SocialTokenRequestToJson(_SocialTokenRequest instance) =>
    <String, dynamic>{
      'providerId': instance.providerId,
      'accountId': instance.accountId,
      'userId': instance.userId,
    };

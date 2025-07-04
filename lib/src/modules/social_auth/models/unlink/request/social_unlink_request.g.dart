// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_unlink_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocialUnlinkRequest _$SocialUnlinkRequestFromJson(Map<String, dynamic> json) =>
    _SocialUnlinkRequest(
      providerId: json['providerId'] as String,
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$SocialUnlinkRequestToJson(
  _SocialUnlinkRequest instance,
) => <String, dynamic>{
  'providerId': instance.providerId,
  'accountId': instance.accountId,
};

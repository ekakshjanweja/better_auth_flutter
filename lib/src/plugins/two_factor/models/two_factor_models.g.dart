// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_factor_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TwoFactorEnableBody _$TwoFactorEnableBodyFromJson(Map<String, dynamic> json) =>
    _TwoFactorEnableBody(
      password: json['password'] as String,
      issuer: json['issuer'] as String?,
    );

Map<String, dynamic> _$TwoFactorEnableBodyToJson(
  _TwoFactorEnableBody instance,
) => <String, dynamic>{
  'password': instance.password,
  'issuer': instance.issuer,
};

_TwoFactorPasswordBody _$TwoFactorPasswordBodyFromJson(
  Map<String, dynamic> json,
) => _TwoFactorPasswordBody(password: json['password'] as String);

Map<String, dynamic> _$TwoFactorPasswordBodyToJson(
  _TwoFactorPasswordBody instance,
) => <String, dynamic>{'password': instance.password};

_TwoFactorVerifyBody _$TwoFactorVerifyBodyFromJson(Map<String, dynamic> json) =>
    _TwoFactorVerifyBody(
      code: json['code'] as String,
      trustDevice: json['trustDevice'] as bool?,
    );

Map<String, dynamic> _$TwoFactorVerifyBodyToJson(
  _TwoFactorVerifyBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'trustDevice': instance.trustDevice,
};

_TwoFactorEnableResponse _$TwoFactorEnableResponseFromJson(
  Map<String, dynamic> json,
) => _TwoFactorEnableResponse(
  totpURI: json['totpURI'] as String,
  backupCodes:
      (json['backupCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
);

Map<String, dynamic> _$TwoFactorEnableResponseToJson(
  _TwoFactorEnableResponse instance,
) => <String, dynamic>{
  'totpURI': instance.totpURI,
  'backupCodes': instance.backupCodes,
};

_TotpUriResponse _$TotpUriResponseFromJson(Map<String, dynamic> json) =>
    _TotpUriResponse(totpURI: json['totpURI'] as String);

Map<String, dynamic> _$TotpUriResponseToJson(_TotpUriResponse instance) =>
    <String, dynamic>{'totpURI': instance.totpURI};

_BackupCodesResponse _$BackupCodesResponseFromJson(Map<String, dynamic> json) =>
    _BackupCodesResponse(
      backupCodes:
          (json['backupCodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$BackupCodesResponseToJson(
  _BackupCodesResponse instance,
) => <String, dynamic>{
  'backupCodes': instance.backupCodes,
  'status': instance.status,
};

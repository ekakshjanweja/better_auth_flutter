// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgetPasswordRequest _$ForgetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => _ForgetPasswordRequest(
  email: json['email'] as String,
  redirectTo: json['redirectTo'] as String?,
);

Map<String, dynamic> _$ForgetPasswordRequestToJson(
  _ForgetPasswordRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'redirectTo': instance.redirectTo,
};

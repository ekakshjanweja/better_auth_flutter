// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  emailVerified: json['emailVerified'] as bool? ?? false,
  image: json['image'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  twoFactorEnabled: json['twoFactorEnabled'] as bool? ?? false,
  username: json['username'] as String?,
  displayUsername: json['displayUsername'] as String?,
  isAnonymous: json['isAnonymous'] as bool? ?? false,
  phoneNumber: json['phoneNumber'] as String?,
  phoneNumberVerified: json['phoneNumberVerified'] as bool? ?? false,
  role: json['role'] as String?,
  banned: json['banned'] as bool? ?? false,
  banReason: json['banReason'] as String?,
  banExpires: json['banExpires'] == null
      ? null
      : DateTime.parse(json['banExpires'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'emailVerified': instance.emailVerified,
  'image': instance.image,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'twoFactorEnabled': instance.twoFactorEnabled,
  'username': instance.username,
  'displayUsername': instance.displayUsername,
  'isAnonymous': instance.isAnonymous,
  'phoneNumber': instance.phoneNumber,
  'phoneNumberVerified': instance.phoneNumberVerified,
  'role': instance.role,
  'banned': instance.banned,
  'banReason': instance.banReason,
  'banExpires': instance.banExpires?.toIso8601String(),
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Organization _$OrganizationFromJson(Map<String, dynamic> json) =>
    _Organization(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      logo: json['logo'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OrganizationToJson(_Organization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'metadata': instance.metadata,
    };

_Member _$MemberFromJson(Map<String, dynamic> json) => _Member(
  id: json['id'] as String,
  userId: json['userId'] as String,
  organizationId: json['organizationId'] as String,
  role: json['role'] as String,
  name: json['name'] as String?,
  email: json['email'] as String?,
  image: json['image'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$MemberToJson(_Member instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'organizationId': instance.organizationId,
  'role': instance.role,
  'name': instance.name,
  'email': instance.email,
  'image': instance.image,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_Invitation _$InvitationFromJson(Map<String, dynamic> json) => _Invitation(
  id: json['id'] as String,
  organizationId: json['organizationId'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  status: json['status'] as String,
  inviterId: json['inviterId'] as String?,
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$InvitationToJson(_Invitation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizationId': instance.organizationId,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'inviterId': instance.inviterId,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

_FullOrganization _$FullOrganizationFromJson(Map<String, dynamic> json) =>
    _FullOrganization(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      logo: json['logo'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      members:
          (json['members'] as List<dynamic>?)
              ?.map((e) => Member.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Member>[],
      invitations:
          (json['invitations'] as List<dynamic>?)
              ?.map((e) => Invitation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Invitation>[],
    );

Map<String, dynamic> _$FullOrganizationToJson(_FullOrganization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'metadata': instance.metadata,
      'members': instance.members,
      'invitations': instance.invitations,
    };

_CreateOrganizationBody _$CreateOrganizationBodyFromJson(
  Map<String, dynamic> json,
) => _CreateOrganizationBody(
  name: json['name'] as String,
  slug: json['slug'] as String,
  logo: json['logo'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$CreateOrganizationBodyToJson(
  _CreateOrganizationBody instance,
) => <String, dynamic>{
  'name': instance.name,
  'slug': instance.slug,
  'logo': instance.logo,
  'metadata': instance.metadata,
};

_InviteMemberBody _$InviteMemberBodyFromJson(Map<String, dynamic> json) =>
    _InviteMemberBody(
      email: json['email'] as String,
      role: json['role'] as String,
      organizationId: json['organizationId'] as String?,
      resend: json['resend'] as bool?,
    );

Map<String, dynamic> _$InviteMemberBodyToJson(_InviteMemberBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'organizationId': instance.organizationId,
      'resend': instance.resend,
    };

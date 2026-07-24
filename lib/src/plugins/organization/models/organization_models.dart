import "package:freezed_annotation/freezed_annotation.dart";

part "organization_models.freezed.dart";
part "organization_models.g.dart";

/// An organization.
@freezed
abstract class Organization with _$Organization {
  const factory Organization({
    required String id,
    required String name,
    String? slug,
    String? logo,
    DateTime? createdAt,
    Map<String, dynamic>? metadata,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}

/// A member of an organization.
@freezed
abstract class Member with _$Member {
  const factory Member({
    required String id,
    required String userId,
    required String organizationId,
    required String role,
    String? name,
    String? email,
    String? image,
    DateTime? createdAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

/// An invitation to join an organization.
@freezed
abstract class Invitation with _$Invitation {
  const factory Invitation({
    required String id,
    required String organizationId,
    required String email,
    required String role,

    /// One of `pending`, `accepted`, `rejected`, `canceled`.
    required String status,
    String? inviterId,
    DateTime? expiresAt,
  }) = _Invitation;

  factory Invitation.fromJson(Map<String, dynamic> json) =>
      _$InvitationFromJson(json);
}

/// An organization with its members and pending invitations.
@freezed
abstract class FullOrganization with _$FullOrganization {
  const factory FullOrganization({
    required String id,
    required String name,
    String? slug,
    String? logo,
    Map<String, dynamic>? metadata,
    @Default(<Member>[]) List<Member> members,
    @Default(<Invitation>[]) List<Invitation> invitations,
  }) = _FullOrganization;

  factory FullOrganization.fromJson(Map<String, dynamic> json) =>
      _$FullOrganizationFromJson(json);
}

/// Body for creating an organization.
@freezed
abstract class CreateOrganizationBody with _$CreateOrganizationBody {
  const factory CreateOrganizationBody({
    required String name,
    required String slug,
    String? logo,
    Map<String, dynamic>? metadata,
  }) = _CreateOrganizationBody;

  factory CreateOrganizationBody.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationBodyFromJson(json);
}

/// Body for inviting a member.
@freezed
abstract class InviteMemberBody with _$InviteMemberBody {
  const factory InviteMemberBody({
    required String email,
    required String role,
    String? organizationId,
    bool? resend,
  }) = _InviteMemberBody;

  factory InviteMemberBody.fromJson(Map<String, dynamic> json) =>
      _$InviteMemberBodyFromJson(json);
}

import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/plugins/organization/models/organization_models.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_organization.g.dart";

/// Typed wrapper for the most-used Better Auth `organization()` routes.
///
/// The remaining routes (check-slug, has-permission, cancel/reject invitation,
/// …) are reachable untyped via the core client while this surface grows.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthOrganization {
  factory BetterAuthOrganization(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthOrganization;

  @POST("/organization/create")
  Future<Result<Organization>> create({
    @Body() required CreateOrganizationBody body,
  });

  @GET("/organization/list")
  Future<Result<List<Organization>>> list();

  @GET("/organization/get-full-organization")
  Future<Result<FullOrganization>> getFullOrganization({
    @Query("organizationId") String? organizationId,
  });

  /// Sets the active organization for the session. Pass a null id to clear it.
  @POST("/organization/set-active")
  Future<Result<FullOrganization>> setActive({
    @Body() required Map<String, dynamic> body,
  });

  @GET("/organization/list-members")
  Future<Result<List<Member>>> listMembers({
    @Query("organizationId") String? organizationId,
  });

  @POST("/organization/remove-member")
  Future<Result<StatusResponse>> removeMember({
    @Body() required Map<String, dynamic> body,
  });

  @POST("/organization/update-member-role")
  Future<Result<Member>> updateMemberRole({
    @Body() required Map<String, dynamic> body,
  });

  @POST("/organization/invite-member")
  Future<Result<Invitation>> inviteMember({
    @Body() required InviteMemberBody body,
  });

  @GET("/organization/list-invitations")
  Future<Result<List<Invitation>>> listInvitations({
    @Query("organizationId") String? organizationId,
  });

  @POST("/organization/accept-invitation")
  Future<Result<Invitation>> acceptInvitation({
    @Body() required Map<String, dynamic> body,
  });
}

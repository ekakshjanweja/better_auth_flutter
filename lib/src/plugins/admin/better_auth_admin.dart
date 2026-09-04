import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/success_response/success_response.dart";
import "package:better_auth_flutter/src/core/api/models/session/session_response.dart";
import "package:better_auth_flutter/src/plugins/admin/models/create_user/user_response.dart";
import "package:better_auth_flutter/src/plugins/admin/models/permission/check_permission_response.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_admin.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthAdmin {
  factory BetterAuthAdmin(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthAdmin;

  @POST("/admin/set-role")
  Future<Result<UserResponse>> setRole({
    @BodyExtra("userId") required String userId,
    @BodyExtra("role") required String role,
  });

  @POST("/admin/create-user")
  Future<Result<UserResponse>> createUser({
    @BodyExtra("name") required String name,
    @BodyExtra("email") required String email,
    @BodyExtra("password") required String password,
    @BodyExtra("role") String? role,
    @BodyExtra("data") String? data,
  });

  @GET("/admin/list-users")
  Future<Result<UserResponse>> listUsers();

  @POST("/admin/list-user-sessions")
  Future<Result<UserResponse>> listUserSessions({
    @BodyExtra("userId") required String userId,
  });

  @POST("/admin/unban-user")
  Future<Result<UserResponse>> unBanUser({
    @BodyExtra("userId") required String userId,
  });

  @POST("/admin/ban-user")
  Future<Result<UserResponse>> banUser({
    @BodyExtra("userId") required String userId,
    @BodyExtra("banReason") String banReason = "",
    @BodyExtra("banExpiresIn") String? banExpiresIn,
  });

  @POST("/admin/impersonate-user")
  Future<Result<SessionResponse>> impersonateUser({
    @BodyExtra("userId") required String userId,
  });

  @POST("/admin/stop-impersonating")
  Future<Result<SuccessResponse>> stopImpersonating({
    @BodyExtra("userId") required String userId,
  });

  @POST("/admin/revoke-user-sessions")
  Future<Result<SuccessResponse>> removeUserSessions({
    @Body(nullToAbsent: true) required Map<String, dynamic> body,
  });

  @POST("/admin/remove-user")
  Future<Result<SuccessResponse>> removeUser({
    @BodyExtra("userId") required String userId,
  });

  @POST("/admin/set-user-password")
  Future<Result<StatusResponse>> setUserPassword({
    @BodyExtra("newPassword") required String newPassword,
    @BodyExtra("userId") required String userId,
  });

  @POST("/admin/has-permission")
  Future<Result<CheckPermissionResponse>> hasPermission({
    @BodyExtra("permissions") required Map<String, dynamic> permissions,
  });

  /// Reads a single user by id (`GET /admin/get-user?id=…`).
  @GET("/admin/get-user")
  Future<Result<UserResponse>> getUser({
    @Query("id") required String id,
  });

  /// Updates user fields. [body] is `{"userId": …, "data": {…}}` where `data`
  /// is a flat map of user columns to set (`name`, `email`, `role`,
  /// `banned`, …).
  @POST("/admin/update-user")
  Future<Result<UserResponse>> updateUser({
    @Body(nullToAbsent: true) required Map<String, dynamic> body,
  });
}

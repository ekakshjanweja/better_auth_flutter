import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/plugins/api_key/models/api_key_models.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

part "better_auth_api_key.g.dart";

/// Typed wrapper for the Better Auth `apiKey()` plugin routes.
@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthApiKey {
  factory BetterAuthApiKey(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthApiKey;

  /// Creates a key. The returned [ApiKey.key] is the only time the full secret
  /// is exposed.
  @POST("/api-key/create")
  Future<Result<ApiKey>> create({@Body() required CreateApiKeyBody body});

  /// Fetches one key by id.
  @GET("/api-key/get")
  Future<Result<ApiKey>> get({@Query("id") required String id});

  /// Updates a key.
  @POST("/api-key/update")
  Future<Result<ApiKey>> update({@Body() required UpdateApiKeyBody body});

  /// Deletes a key.
  @POST("/api-key/delete")
  Future<Result<StatusResponse>> delete({
    @Body() required Map<String, dynamic> body,
  });

  /// Lists the current user's keys.
  @GET("/api-key/list")
  Future<Result<List<ApiKey>>> list();
}

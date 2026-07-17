import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

import "models/jwt_key_response/jwt_key_response.dart";
import "models/token_response/token_response.dart";

part "better_auth_jwt.g.dart";

@RestApi(callAdapter: BetterAuthCallAdapter)
abstract class BetterAuthJwt {
  factory BetterAuthJwt(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BetterAuthJwt;

  @GET("/jwks")
  Future<Result<JwtKeyResponse>> jwks();

  @GET("/token")
  Future<Result<JwtTokenResponse>> token();
}

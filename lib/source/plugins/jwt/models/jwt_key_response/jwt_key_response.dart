import "package:better_auth_flutter/source/plugins/jwt/models/jwt_key/jwt_key.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "jwt_key_response.freezed.dart";
part "jwt_key_response.g.dart";

@freezed
abstract class JwtKeyResponse with _$JwtKeyResponse {
  const factory JwtKeyResponse({required List<JwtKey> keys}) = _JwtKeyResponse;

  factory JwtKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$JwtKeyResponseFromJson(json);
}

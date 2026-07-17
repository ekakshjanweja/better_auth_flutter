import "package:freezed_annotation/freezed_annotation.dart";

part "jwt_key.g.dart";
part "jwt_key.freezed.dart";

@freezed
abstract class JwtKey with _$JwtKey {
  const factory JwtKey({
    required String kid,
    required String kty,
    required String alg,
    String? use,
    String? n,
    String? e,
    String? crv,
    String? x,
    String? y,
  }) = _JwtKey;

  factory JwtKey.fromJson(Map<String, dynamic> json) => _$JwtKeyFromJson(json);
}

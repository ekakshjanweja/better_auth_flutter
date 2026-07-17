import "package:freezed_annotation/freezed_annotation.dart";

part "token_response.freezed.dart";
part "token_response.g.dart";

@freezed
abstract class JwtTokenResponse with _$JwtTokenResponse {
  const factory JwtTokenResponse({required String token}) = _JwtTokenResponse;

  factory JwtTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$JwtTokenResponseFromJson(json);
}

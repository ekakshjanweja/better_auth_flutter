import "package:freezed_annotation/freezed_annotation.dart";

part "token_response.freezed.dart";
part "token_response.g.dart";

@freezed
abstract class TokenResponse with _$TokenResponse {
  const factory TokenResponse({
    required String tokenType,
    required String idToken,
    required String accessToken,
    required String refreshToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}

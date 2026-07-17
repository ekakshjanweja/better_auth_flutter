import "package:freezed_annotation/freezed_annotation.dart";

part "one_time_token_models.freezed.dart";
part "one_time_token_models.g.dart";

/// Response from generating a one-time token.
@freezed
abstract class OneTimeTokenResponse with _$OneTimeTokenResponse {
  const factory OneTimeTokenResponse({required String token}) =
      _OneTimeTokenResponse;

  factory OneTimeTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$OneTimeTokenResponseFromJson(json);
}

import "package:freezed_annotation/freezed_annotation.dart";

part "social_account_response.freezed.dart";
part "social_account_response.g.dart";

@freezed
abstract class SocialAccountResponse with _$SocialAccountResponse {
  const factory SocialAccountResponse({
    required String id,
    required String provider,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _SocialAccountResponse;

  factory SocialAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$SocialAccountResponseFromJson(json);
}

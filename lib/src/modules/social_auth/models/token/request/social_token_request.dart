import "package:freezed_annotation/freezed_annotation.dart";

part "social_token_request.freezed.dart";
part "social_token_request.g.dart";

@freezed
abstract class SocialTokenRequest with _$SocialTokenRequest {
  const factory SocialTokenRequest({
    required String providerId,
    String? accountId,
    String? userId,
  }) = _SocialTokenRequest;

  factory SocialTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialTokenRequestFromJson(json);
}

import "package:freezed_annotation/freezed_annotation.dart";

part "social_link_response.freezed.dart";
part "social_link_response.g.dart";

@freezed
abstract class SocialLinkResponse with _$SocialLinkResponse {
  const factory SocialLinkResponse({
    required String url,
    @Default(false) bool redirect,
  }) = _SocialLinkResponse;

  factory SocialLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkResponseFromJson(json);
}

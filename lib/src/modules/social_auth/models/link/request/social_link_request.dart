import "package:better_auth_flutter/src/modules/sign_in/models/social/common/social_provider.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "social_link_request.freezed.dart";
part "social_link_request.g.dart";

@freezed
abstract class SocialLinkRequest with _$SocialLinkRequest {
  const factory SocialLinkRequest({
    String? callbackURL,
    String? scopes,
    required SocialProvider provider,
  }) = _SocialLinkRequest;

  factory SocialLinkRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkRequestFromJson(json);
}

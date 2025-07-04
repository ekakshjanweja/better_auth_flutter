import "package:freezed_annotation/freezed_annotation.dart";

part "social_unlink_request.freezed.dart";
part "social_unlink_request.g.dart";

@freezed
abstract class SocialUnlinkRequest with _$SocialUnlinkRequest {
  const factory SocialUnlinkRequest({
    required String providerId,
    String? accountId,
  }) = _SocialUnlinkRequest;

  factory SocialUnlinkRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialUnlinkRequestFromJson(json);
}

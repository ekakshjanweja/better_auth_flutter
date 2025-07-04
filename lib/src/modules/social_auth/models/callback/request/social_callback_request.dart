import "package:freezed_annotation/freezed_annotation.dart";

part "social_callback_request.freezed.dart";
part "social_callback_request.g.dart";

@freezed
abstract class SocialCallbackRequest with _$SocialCallbackRequest {
  const factory SocialCallbackRequest({String? code, String? state}) =
      _SocialCallbackRequest;

  factory SocialCallbackRequest.fromJson(Map<String, dynamic> json) =>
      _$SocialCallbackRequestFromJson(json);
}

import "package:freezed_annotation/freezed_annotation.dart";

part "magic_link_models.freezed.dart";
part "magic_link_models.g.dart";

/// Body for requesting a magic-link email.
@freezed
abstract class MagicLinkBody with _$MagicLinkBody {
  const factory MagicLinkBody({
    required String email,
    String? name,
    String? callbackURL,
    String? newUserCallbackURL,
    String? errorCallbackURL,
  }) = _MagicLinkBody;

  factory MagicLinkBody.fromJson(Map<String, dynamic> json) =>
      _$MagicLinkBodyFromJson(json);
}

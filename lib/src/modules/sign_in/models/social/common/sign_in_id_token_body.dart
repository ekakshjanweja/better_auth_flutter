import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_id_token_body.freezed.dart";
part "sign_in_id_token_body.g.dart";

@freezed
abstract class SocialIdTokenBody with _$SocialIdTokenBody {
  const factory SocialIdTokenBody({
    required String token,
    String? accessToken,
  }) = _SocialIdTokenBody;

  factory SocialIdTokenBody.fromJson(Map<String, dynamic> json) =>
      _$SocialIdTokenBodyFromJson(json);
}

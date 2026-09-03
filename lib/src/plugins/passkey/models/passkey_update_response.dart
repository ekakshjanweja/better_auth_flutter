import "package:freezed_annotation/freezed_annotation.dart";

import "passkey_record.dart";

part "passkey_update_response.freezed.dart";
part "passkey_update_response.g.dart";

/// Response shape for `POST /passkey/update-passkey`.
@freezed
abstract class PasskeyUpdateResponse with _$PasskeyUpdateResponse {
  const factory PasskeyUpdateResponse({required PasskeyRecord passkey}) =
      _PasskeyUpdateResponse;

  factory PasskeyUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$PasskeyUpdateResponseFromJson(json);
}

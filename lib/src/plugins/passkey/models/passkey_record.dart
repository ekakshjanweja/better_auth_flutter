import "package:freezed_annotation/freezed_annotation.dart";

part "passkey_record.freezed.dart";
part "passkey_record.g.dart";

/// Stored passkey row from Better Auth
/// [`passkey`](https://www.better-auth.com/docs/plugins/passkey).
@freezed
abstract class PasskeyRecord with _$PasskeyRecord {
  const factory PasskeyRecord({
    required String id,
    String? name,
    required String userId,
    required String credentialID,
    required String publicKey,
    @JsonKey(fromJson: _counterFromJson) required int counter,
    required String deviceType,
    required bool backedUp,
    String? transports,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? aaguid,
  }) = _PasskeyRecord;

  factory PasskeyRecord.fromJson(Map<String, dynamic> json) =>
      _$PasskeyRecordFromJson(json);
}

int _counterFromJson(Object? value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  throw FormatException("invalid passkey counter: $value");
}

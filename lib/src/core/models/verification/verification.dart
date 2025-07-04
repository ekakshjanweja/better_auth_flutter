import "package:freezed_annotation/freezed_annotation.dart";

part "verification.freezed.dart";
part "verification.g.dart";

@freezed
abstract class Verification with _$Verification {
  const factory Verification({
    required String id,
    required String identifier,
    required String value,
    required DateTime expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Verification;

  factory Verification.fromJson(Map<String, dynamic> json) =>
      _$VerificationFromJson(json);
}

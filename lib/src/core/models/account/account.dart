import "package:freezed_annotation/freezed_annotation.dart";

part "account.freezed.dart";
part "account.g.dart";

@freezed
abstract class Account with _$Account {
  const factory Account({
    required String id,
    required String providerId,
    required String accountId,
    required String userId,
    String? accessToken,
    String? refreshToken,
    String? idToken,
    DateTime? accessTokenExpiresAt,
    DateTime? refreshTokenExpiresAt,
    String? scope,
    String? password,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

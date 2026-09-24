import "package:freezed_annotation/freezed_annotation.dart";

part "user.freezed.dart";

part "user.g.dart";

/// The Better Auth user payload.
///
/// Custom server columns
/// ([additionalFields](https://www.better-auth.com/docs/concepts/database#extending-core-schema))
/// land in [additionalFields]. Use `field<T>()` to read them, or [toAppMap]
/// to flatten core + custom keys into a map your app model can parse.
///
/// If your app already has a `User` type, prefix the import:
/// `import "package:better_auth_flutter/better_auth_flutter.dart" as auth;`
@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String name,
    required String email,
    @Default(false) bool emailVerified,
    String? image,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
    @Default(false) bool twoFactorEnabled,
    String? username,
    String? displayUsername,
    @Default(false) bool isAnonymous,
    String? phoneNumber,
    @Default(false) bool phoneNumberVerified,
    String? role,
    @Default(false) bool banned,
    String? banReason,
    DateTime? banExpires,

    /// Server-defined custom fields
    /// ([additionalFields](https://www.better-auth.com/docs/concepts/database#extending-core-schema))
    /// that aren't part of the static [User] shape. Populated from unmapped
    /// JSON keys by [User.fromJson]; never serialized back out. Read via
    /// the `field` extension, e.g. `user.field<String>('firstName')`.
    @JsonKey(readValue: _readUserAdditionalFields, includeToJson: false)
    @Default(<String, dynamic>{})
    Map<String, dynamic> additionalFields,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Core fields plus [additionalFields], flattened.
  ///
  /// Downstream apps can feed this into their own model:
  /// ```dart
  /// class AppUser {
  ///   AppUser.fromAuth(User auth)
  ///     : id = auth.id,
  ///       firstName = auth.field<String>("firstName");
  /// }
  /// // or: AppUser.fromJson(auth.toAppMap())
  /// ```
  Map<String, dynamic> toAppMap() => <String, dynamic>{
    ...toJson(),
    ...additionalFields,
  };
}

const _knownUserKeys = <String>{
  "id",
  "name",
  "email",
  "emailVerified",
  "image",
  "createdAt",
  "updatedAt",
  "twoFactorEnabled",
  "username",
  "displayUsername",
  "isAnonymous",
  "phoneNumber",
  "phoneNumberVerified",
  "role",
  "banned",
  "banReason",
  "banExpires",
};

/// [JsonKey.readValue] for [User.additionalFields]: returns every server
/// key the static model doesn't own — Better Auth merges `additionalFields`
/// into the user object as flat top-level keys, so this collects the remainder.
Map<String, dynamic> _readUserAdditionalFields(
  Map<dynamic, dynamic> json,
  String _,
) {
  final extra = Map<String, dynamic>.from(json)
    ..removeWhere((key, _) => _knownUserKeys.contains(key));
  return Map.unmodifiable(extra);
}

import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";

/// Reads an [User.additionalFields] / [Session.additionalFields] entry with a
/// typed cast. Returns `null` when [key] is absent; throws an [ArgumentError]
/// when the key exists but the value isn't assignable to [T]. Pass [decode]
/// for values that need conversion (e.g. nested JSON into a typed object).
T? _readAdditionalField<T>(
  Map<String, dynamic> fields,
  String key, {
  T Function(Object? value)? decode,
}) {
  if (!fields.containsKey(key)) return null;
  final value = decode != null ? decode(fields[key]) : fields[key];
  if (value is T) return value;
  throw ArgumentError.value(value, key, "additional field is not of type $T");
}

/// Typed access to Better Auth
/// [`user.additionalFields`](https://www.better-auth.com/docs/concepts/database#extending-core-schema).
///
/// For fields you read often, add your own extension in app code so call sites
/// stay typo-safe:
/// ```dart
/// extension MyUserFields on User {
///   String? get firstName => field("firstName");
///   String get role => field<String>("role") ?? "user";
/// }
/// ```
extension UserAdditionalFields on User {
  /// Reads [key] from [User.additionalFields], casting to [T].
  ///
  /// Returns `null` for an absent key. Throws if the key exists but its value
  /// is not assignable to [T] (e.g. asking for `int` on a string field).
  T? field<T>(String key, {T Function(Object? value)? decode}) =>
      _readAdditionalField(additionalFields, key, decode: decode);
}

/// Typed access to Better Auth
/// [`session.additionalFields`](https://www.better-auth.com/docs/concepts/database#extending-core-schema).
extension SessionAdditionalFields on Session {
  /// Reads [key] from [Session.additionalFields], casting to [T].
  ///
  /// Returns `null` for an absent key. Throws if the key exists but its value
  /// is not assignable to [T].
  T? field<T>(String key, {T Function(Object? value)? decode}) =>
      _readAdditionalField(additionalFields, key, decode: decode);
}

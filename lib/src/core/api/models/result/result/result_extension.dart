import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";

/// Convenience getters over the sealed [Result]: the success value or the
/// failure, whichever this instance holds — `null` for the other branch.
///
/// Prefer exhaustive `switch` matching when both branches need handling; these
/// getters are for the common "grab the value or bail" shape:
///
/// ```dart
/// final user = (await client.getSession()).data?.user;
/// if (user == null) return goToSignIn();
/// ```
extension ResultX<T> on Result<T> {
  /// The success value, or `null` for [Failure].
  T? get data => switch (this) {
    Success(:final data) => data,
    Failure() => null,
  };

  /// The failure, or `null` for [Success].
  BetterError? get error => switch (this) {
    Success() => null,
    Failure(:final error) => error,
  };
}

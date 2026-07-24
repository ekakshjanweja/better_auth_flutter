import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "result.freezed.dart";

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.ok(T data) = Success<T>;
  const factory Result.err(BetterError error) = Failure<T>;
}

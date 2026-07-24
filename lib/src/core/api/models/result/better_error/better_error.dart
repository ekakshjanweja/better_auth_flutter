import "package:freezed_annotation/freezed_annotation.dart";

part "better_error.freezed.dart";
part "better_error.g.dart";

@freezed
abstract class BetterError with _$BetterError {
  const BetterError._();

  const factory BetterError({
    /// Better Auth's error code (e.g. `USER_NOT_FOUND`), or one of the
    /// transport-level codes in [BetterErrorCodes] when the request never
    /// produced a structured response.
    @Default("ERROR") String code,
    required String message,
    required String? stack,

    /// HTTP status of the failed response, when there was one. Null for
    /// transport failures (timeout, connection error, cancellation).
    int? statusCode,
  }) = _BetterError;

  factory BetterError.fromJson(Map<String, dynamic> json) =>
      _$BetterErrorFromJson(json);

  /// Whether the session was rejected. Prefer this over comparing [statusCode]
  /// directly — a server may signal it via code or status.
  bool get isUnauthorized =>
      statusCode == 401 || code == BetterErrorCodes.unauthorized;

  /// Whether the request failed before reaching the server. These are worth
  /// retrying; a 4xx generally is not.
  bool get isNetworkError =>
      code == BetterErrorCodes.networkError || code == BetterErrorCodes.timeout;
}

/// Transport-level error codes synthesized by the client when a request fails
/// without a structured Better Auth error body.
///
/// Better Auth's own codes (`USER_NOT_FOUND`, `INVALID_EMAIL_OR_PASSWORD`, …)
/// pass through verbatim in [BetterError.code].
abstract final class BetterErrorCodes {
  static const String unknown = "ERROR";
  static const String networkError = "NETWORK_ERROR";
  static const String timeout = "TIMEOUT";
  static const String cancelled = "CANCELLED";
  static const String badResponse = "BAD_RESPONSE";
  static const String unauthorized = "UNAUTHORIZED";
  static const String rateLimited = "RATE_LIMITED";
}

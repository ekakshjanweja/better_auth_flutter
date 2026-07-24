import "package:freezed_annotation/freezed_annotation.dart";

part "api_key_models.freezed.dart";
part "api_key_models.g.dart";

/// An API key.
///
/// [key] is the full secret and is returned **only** when the key is created —
/// it is null on list/get, where only [start] (a display prefix) is available.
@freezed
abstract class ApiKey with _$ApiKey {
  const factory ApiKey({
    required String id,
    String? name,
    String? start,
    String? prefix,

    /// The full key, present only in the create response.
    String? key,
    String? userId,
    @Default(true) bool enabled,
    int? remaining,
    int? refillAmount,
    int? refillInterval,
    bool? rateLimitEnabled,
    int? rateLimitMax,
    int? rateLimitTimeWindow,
    int? requestCount,
    DateTime? lastRequest,
    DateTime? expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? metadata,
  }) = _ApiKey;

  factory ApiKey.fromJson(Map<String, dynamic> json) => _$ApiKeyFromJson(json);
}

/// Body for creating an API key.
@freezed
abstract class CreateApiKeyBody with _$CreateApiKeyBody {
  const factory CreateApiKeyBody({
    String? name,
    String? prefix,
    int? expiresIn,
    int? remaining,
    int? refillAmount,
    int? refillInterval,
    int? rateLimitMax,
    int? rateLimitTimeWindow,
    bool? rateLimitEnabled,
    Map<String, dynamic>? metadata,
  }) = _CreateApiKeyBody;

  factory CreateApiKeyBody.fromJson(Map<String, dynamic> json) =>
      _$CreateApiKeyBodyFromJson(json);
}

/// Body for updating an API key.
@freezed
abstract class UpdateApiKeyBody with _$UpdateApiKeyBody {
  const factory UpdateApiKeyBody({
    required String keyId,
    String? name,
    bool? enabled,
    int? remaining,
    Map<String, dynamic>? metadata,
  }) = _UpdateApiKeyBody;

  factory UpdateApiKeyBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateApiKeyBodyFromJson(json);
}

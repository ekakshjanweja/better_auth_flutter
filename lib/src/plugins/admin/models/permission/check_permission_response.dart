import "package:freezed_annotation/freezed_annotation.dart";

part "check_permission_response.freezed.dart";

part "check_permission_response.g.dart";

@freezed
abstract class CheckPermissionResponse with _$CheckPermissionResponse {
  const factory CheckPermissionResponse({
    required bool success,
    String? error,
  }) = _CheckPermissionResponse;

  factory CheckPermissionResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckPermissionResponseFromJson(json);
}

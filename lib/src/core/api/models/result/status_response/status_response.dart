import "package:freezed_annotation/freezed_annotation.dart";

part "status_response.freezed.dart";
part "status_response.g.dart";

@freezed
abstract class StatusResponse with _$StatusResponse {
  const factory StatusResponse({required bool status, String? message}) =
      _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);
}

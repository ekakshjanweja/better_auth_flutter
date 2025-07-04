import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "session_response.freezed.dart";
part "session_response.g.dart";

@freezed
abstract class SessionResponse with _$SessionResponse {
  const factory SessionResponse({
    required Session session,
    required User user,
  }) = _SessionResponse;

  factory SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseFromJson(json);
}

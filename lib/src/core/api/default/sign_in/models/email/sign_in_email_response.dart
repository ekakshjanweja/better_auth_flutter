import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "sign_in_email_response.freezed.dart";
part "sign_in_email_response.g.dart";

@freezed
abstract class SignInEmailResponse with _$SignInEmailResponse {
  const factory SignInEmailResponse({
    @Default(false) bool redirect,
    @Default("") String token,
    String? url,
    User? user,

    /// True when the server returned a two-factor challenge instead of a
    /// session. When set, [user] and [token] are absent and the caller must
    /// complete the second factor via the `twoFactor` plugin.
    bool? twoFactorRedirect,
  }) = _SignInEmailResponse;
  factory SignInEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInEmailResponseFromJson(json);
}

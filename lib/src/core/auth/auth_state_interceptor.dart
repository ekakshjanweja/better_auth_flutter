import "package:better_auth_flutter/src/core/auth/auth_state_controller.dart";
import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:better_auth_flutter/src/core/utils/logger.dart";
import "package:dio/dio.dart";

/// Keeps [AuthStateController] in sync with what the server actually says.
///
/// Auth state is derived from responses rather than from call sites: every
/// route that can change it is listed here, so a new typed wrapper or a raw
/// call through the generated client both stay consistent.
class AuthStateInterceptor extends Interceptor {
  AuthStateInterceptor(this._controller);

  final AuthStateController _controller;

  /// Routes that establish a session and return the user on success.
  static const List<String> _signInPaths = [
    "/sign-in/email",
    "/sign-in/username",
    "/sign-in/social",
    "/sign-in/phone-number",
    "/sign-in/anonymous",
    "/sign-in/magic-link",
    "/sign-up/email",
    "/two-factor/verify-totp",
    "/two-factor/verify-otp",
    "/two-factor/verify-backup-code",
  ];

  /// Routes that report the current session.
  static const List<String> _sessionPaths = ["/get-session"];

  /// Routes that end the session.
  static const List<String> _signOutPaths = ["/sign-out", "/delete-user"];

  static bool _matches(String path, List<String> candidates) =>
      candidates.any((c) => path == c || path.endsWith(c));

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    try {
      _sync(response);
    } catch (e, s) {
      // Auth-state bookkeeping must never break the response it observed.
      BetterAuthLog.error("Failed to derive auth state from response", e, s);
    }
    handler.next(response);
  }

  void _sync(Response<dynamic> response) {
    final path = response.requestOptions.path;

    if (_matches(path, _signOutPaths)) {
      _controller.setUnauthenticated();
      return;
    }

    final isSession = _matches(path, _sessionPaths);
    if (!isSession && !_matches(path, _signInPaths)) return;

    final data = response.data;
    final user = _userFrom(data);

    if (user != null) {
      _controller.setAuthenticated(user, _sessionFrom(data));
      return;
    }

    // Better Auth answers /get-session with a null body when there is no
    // session, so an empty success here is a definitive "signed out".
    if (isSession) _controller.setUnauthenticated();

    // A sign-in response with no user is a two-factor challenge, not a
    // session. Leave the state alone and let the caller drive the 2FA flow.
  }

  User? _userFrom(Object? data) {
    if (data is! Map) return null;
    final raw = data["user"];
    if (raw is! Map) return null;
    return User.fromJson(raw.cast<String, dynamic>());
  }

  Session? _sessionFrom(Object? data) {
    if (data is! Map) return null;
    final raw = data["session"];
    if (raw is! Map) return null;
    try {
      return Session.fromJson(raw.cast<String, dynamic>());
    } catch (_) {
      return null;
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401 && !_isCredentialCheck(err)) {
      _controller.setUnauthenticated();
    }
    handler.next(err);
  }

  /// A 401 from a sign-in attempt means "those credentials are wrong", not
  /// "your session ended". Treating them the same would sign out an
  /// already-authenticated user who mistyped a password on a re-auth prompt.
  static bool _isCredentialCheck(DioException err) =>
      _matches(err.requestOptions.path, _signInPaths);
}

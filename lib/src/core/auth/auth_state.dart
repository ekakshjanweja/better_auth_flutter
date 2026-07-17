import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "auth_state.freezed.dart";

/// The current authentication state.
///
/// Observe it with `BetterAuthFlutter.authStateChanges`, or gate your widget
/// tree with `BetterAuthBuilder`.
///
/// [AuthInitial] and [Unauthenticated] are deliberately distinct. "We have not
/// looked yet" is not the same as "there is no session": collapsing them makes
/// an app flash its sign-in screen on every cold start while the stored session
/// is still loading.
@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  /// No session lookup has completed yet. Show a splash screen.
  const factory AuthState.initial() = AuthInitial;

  /// A session lookup is in flight and the outcome is not yet known.
  const factory AuthState.loading() = AuthLoading;

  /// There is a valid session.
  const factory AuthState.authenticated({
    required User user,
    Session? session,
  }) = Authenticated;

  /// There is no session.
  const factory AuthState.unauthenticated() = Unauthenticated;

  /// The last session lookup failed. The session may still be valid — this
  /// usually means the network was unreachable — so treat it as distinct from
  /// [Unauthenticated] rather than signing the user out.
  const factory AuthState.error(BetterError error) = AuthError;

  /// The signed-in user, or null in every other state.
  User? get user => switch (this) {
    Authenticated(:final user) => user,
    _ => null,
  };

  /// Whether there is a confirmed session.
  bool get isAuthenticated => this is Authenticated;

  /// Whether we are still determining the session (splash-worthy).
  bool get isResolving => this is AuthInitial || this is AuthLoading;
}

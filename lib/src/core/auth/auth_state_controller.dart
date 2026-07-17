import "dart:async";

import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/models/session/session.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";

/// Owns the current [AuthState] and broadcasts transitions.
///
/// Internal: consumers reach this through `BetterAuthFlutter.authStateChanges`.
class AuthStateController {
  final StreamController<AuthState> _controller =
      StreamController<AuthState>.broadcast();

  AuthState _current = const AuthState.initial();

  /// The state right now, synchronously.
  AuthState get current => _current;

  /// Transitions, replaying [current] to each new listener.
  ///
  /// The replay is load-bearing. A bare broadcast stream only delivers events
  /// that occur *after* subscription, so a widget that subscribes even a
  /// microtask after sign-in would sit on `initial` forever, waiting for a
  /// transition that already happened.
  ///
  /// Note this cannot be written as `async* { yield _current; yield* ... }`:
  /// that leaves a microtask gap between the replay and the subscription, and
  /// anything emitted inside that gap is dropped. Subscribing synchronously in
  /// `onListen` closes the gap while keeping replay-then-transitions ordering.
  Stream<AuthState> get stream {
    StreamSubscription<AuthState>? source;
    late final StreamController<AuthState> out;

    out = StreamController<AuthState>(
      onListen: () {
        out.add(_current);
        source = _controller.stream.listen(
          out.add,
          onError: out.addError,
          onDone: out.close,
        );
      },
      onPause: () => source?.pause(),
      onResume: () => source?.resume(),
      onCancel: () async {
        await source?.cancel();
        source = null;
      },
    );

    return out.stream;
  }

  /// Emits [state], skipping no-op transitions.
  ///
  /// freezed gives value equality, so re-emitting an identical state (a session
  /// refresh returning the same user, say) does not wake up listeners.
  void emit(AuthState state) {
    if (state == _current) return;
    _current = state;
    if (!_controller.isClosed) _controller.add(state);
  }

  void setAuthenticated(User user, [Session? session]) =>
      emit(AuthState.authenticated(user: user, session: session));

  void setUnauthenticated() => emit(const AuthState.unauthenticated());

  void setLoading() => emit(const AuthState.loading());

  Future<void> dispose() => _controller.close();
}

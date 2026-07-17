import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/auth/auth_state_controller.dart";
import "package:flutter_test/flutter_test.dart";

const _user = User(id: "1", name: "Ada", email: "ada@example.com");
const _other = User(id: "2", name: "Grace", email: "grace@example.com");

void main() {
  group("AuthStateController", () {
    test("starts in initial, not unauthenticated", () {
      // These must stay distinct: "haven't looked yet" vs "no session" is what
      // lets an app show a splash instead of flashing the sign-in screen.
      expect(AuthStateController().current, const AuthState.initial());
    });

    test("exposes the current state synchronously", () {
      final controller = AuthStateController()..setAuthenticated(_user);

      expect(controller.current, isA<Authenticated>());
      expect(controller.current.user, _user);
    });

    // Regression guard: a bare broadcast stream only delivers events emitted
    // after subscription, so a listener attaching after sign-in would sit on
    // `initial` forever.
    test("replays the current state to a late subscriber", () async {
      final controller = AuthStateController()..setAuthenticated(_user);

      await expectLater(
        controller.stream,
        emits(const AuthState.authenticated(user: _user)),
      );
    });

    test("replays independently to each late subscriber", () async {
      final controller = AuthStateController()..setUnauthenticated();

      await expectLater(controller.stream, emits(const Unauthenticated()));
      await expectLater(controller.stream, emits(const Unauthenticated()));
    });

    test("emits transitions to an existing subscriber", () {
      final controller = AuthStateController();

      expectLater(
        controller.stream,
        emitsInOrder([
          const AuthState.initial(),
          const AuthState.authenticated(user: _user),
          const AuthState.unauthenticated(),
        ]),
      );

      controller
        ..setAuthenticated(_user)
        ..setUnauthenticated();
    });

    test("deduplicates identical consecutive states", () {
      final controller = AuthStateController();

      expectLater(
        controller.stream,
        emitsInOrder([
          const AuthState.initial(),
          const AuthState.authenticated(user: _user),
          const AuthState.authenticated(user: _other),
        ]),
      );

      controller
        ..setAuthenticated(_user)
        // Same value: a session refresh returning the same user shouldn't wake
        // listeners.
        ..setAuthenticated(_user)
        ..setAuthenticated(_other);
    });

    test("does not throw when emitting after dispose", () async {
      final controller = AuthStateController();
      await controller.dispose();

      expect(controller.setUnauthenticated, returnsNormally);
    });
  });

  group("AuthState", () {
    test("exposes the user only when authenticated", () {
      expect(const AuthState.authenticated(user: _user).user, _user);
      expect(const AuthState.unauthenticated().user, isNull);
      expect(const AuthState.initial().user, isNull);
      expect(const AuthState.loading().user, isNull);
    });

    test("reports isAuthenticated correctly", () {
      expect(
        const AuthState.authenticated(user: _user).isAuthenticated,
        isTrue,
      );
      expect(const AuthState.unauthenticated().isAuthenticated, isFalse);
    });

    test("treats initial and loading as still resolving", () {
      expect(const AuthState.initial().isResolving, isTrue);
      expect(const AuthState.loading().isResolving, isTrue);
      expect(const AuthState.unauthenticated().isResolving, isFalse);
      expect(const AuthState.authenticated(user: _user).isResolving, isFalse);
    });
  });
}

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/riverpod.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_test/flutter_test.dart";

const _user = User(id: "1", name: "Ada", email: "ada@example.com");

ProviderContainer _containerWith(AuthState state) => ProviderContainer(
  overrides: [
    betterAuthStateProvider.overrideWith((ref) => Stream.value(state)),
  ],
);

void main() {
  group("betterAuthStateProvider", () {
    test("emits the current state with no initialization", () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      // The SDK is untouched here: no initialize(), no network. The replay in
      // authStateChanges is what delivers the initial state.
      await expectLater(
        container.read(betterAuthStateProvider.future),
        completion(const AuthState.initial()),
      );
    });

    test("surfaces overridden transitions", () async {
      final container = _containerWith(
        const AuthState.authenticated(user: _user),
      );
      addTearDown(container.dispose);

      await expectLater(
        container.read(betterAuthStateProvider.future),
        completion(const AuthState.authenticated(user: _user)),
      );
    });
  });

  group("currentUserProvider", () {
    test("is the user when authenticated", () {
      final container = _containerWith(
        const AuthState.authenticated(user: _user),
      );
      addTearDown(container.dispose);

      expect(container.read(currentUserProvider), _user);
    });

    test("is null when unauthenticated", () {
      final container = _containerWith(const AuthState.unauthenticated());
      addTearDown(container.dispose);

      expect(container.read(currentUserProvider), isNull);
    });
  });

  group("isAuthenticatedProvider", () {
    test("is true only for an authenticated state", () {
      final signedIn = _containerWith(
        const AuthState.authenticated(user: _user),
      );
      addTearDown(signedIn.dispose);
      final signedOut = _containerWith(const AuthState.unauthenticated());
      addTearDown(signedOut.dispose);

      expect(signedIn.read(isAuthenticatedProvider), isTrue);
      expect(signedOut.read(isAuthenticatedProvider), isFalse);
    });
  });

  group("betterAuthClientProvider", () {
    test("throws before initialize, like BetterAuthFlutter.client", () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      // The provider is a straight read-through: pre-init it must fail the
      // same way the static accessor does, not return a broken client.
      expect(
        () => container.read(betterAuthClientProvider),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}

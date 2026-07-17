// Compile-checks the snippets in README.md.
//
// The previous README documented an API that never existed in this codebase
// (`BetterAuth.init`, `(user, error)` tuple returns, `signInWithIdToken`), on
// top of an import that did not resolve. Nothing caught it because nothing
// compiled the docs. These tests are cheap insurance that the README's headline
// examples at least typecheck against the real surface.
import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/plugins/jwt.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";

// README: "Reactive auth state"
Widget _authGate() => BetterAuthProvider(
  child: MaterialApp(
    home: BetterAuthBuilder(
      authenticated: (context, user) => Text("Welcome ${user.name}"),
      unauthenticated: (context) => const Text("Sign in"),
    ),
  ),
);

// README: "Results"
String _describe(Result<SignInEmailResponse> result) => switch (result) {
  Success(:final data) when data.twoFactorRedirect == true =>
    "Enter your 2FA code",
  Success(:final data) => "Welcome ${data.user?.name}",
  Failure(:final error) => "${error.code}: ${error.message}",
};

// README: error handling helpers
String _classify(BetterError error) {
  if (error.isNetworkError) return "retry";
  if (error.isUnauthorized) return "sign-in";
  return error.message;
}

// README: switching on AuthState
String _route(AuthState state) => switch (state) {
  AuthInitial() || AuthLoading() => "splash",
  Authenticated(:final user) => "home:${user.name}",
  Unauthenticated() => "sign-in",
  AuthError(:final error) => "retry:${error.message}",
};

void main() {
  test("the auth gate snippet builds", () {
    expect(_authGate, returnsNormally);
  });

  test("the Result snippet handles both branches", () {
    const user = User(id: "1", name: "Ada", email: "ada@example.com");

    expect(
      _describe(const Result.ok(SignInEmailResponse(token: "t", user: user))),
      "Welcome Ada",
    );
    expect(
      _describe(
        const Result.err(
          BetterError(
            code: "INVALID_EMAIL_OR_PASSWORD",
            message: "no",
            stack: null,
          ),
        ),
      ),
      "INVALID_EMAIL_OR_PASSWORD: no",
    );
  });

  test("the error-classification snippet works", () {
    expect(
      _classify(
        const BetterError(
          code: BetterErrorCodes.timeout,
          message: "t",
          stack: null,
        ),
      ),
      "retry",
    );
    expect(
      _classify(
        const BetterError(
          code: BetterErrorCodes.unauthorized,
          message: "u",
          stack: null,
        ),
      ),
      "sign-in",
    );
  });

  test("the AuthState routing snippet covers every state", () {
    const user = User(id: "1", name: "Ada", email: "ada@example.com");

    expect(_route(const AuthState.initial()), "splash");
    expect(_route(const AuthState.loading()), "splash");
    expect(_route(const AuthState.authenticated(user: user)), "home:Ada");
    expect(_route(const AuthState.unauthenticated()), "sign-in");
    expect(
      _route(const AuthState.error(BetterError(message: "x", stack: null))),
      "retry:x",
    );
  });

  test("the JWT plugin getter is reachable from its library", () {
    // Only compiles if plugins/jwt.dart exports the plugin surface.
    expect(JwtTokenResponse, isNotNull);
  });
}

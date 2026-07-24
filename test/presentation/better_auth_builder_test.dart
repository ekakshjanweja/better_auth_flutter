import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/src/presentation/better_auth_inherit.dart";
import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";

const _user = User(id: "1", name: "Ada", email: "ada@example.com");

/// Pumps the widgets against a supplied state, bypassing BetterAuthProvider so
/// these stay pure widget tests with no global initialization.
Widget _host(AuthState state, Widget child) => MaterialApp(
  home: BetterAuthInherit(
    client: BetterAuthClient(Dio(), baseUrl: "https://example.com"),
    state: state,
    child: child,
  ),
);

void main() {
  group("BetterAuthBuilder", () {
    final builder = BetterAuthBuilder(
      authenticated: (_, user) => Text("hi ${user.name}"),
      unauthenticated: (_) => const Text("sign in"),
    );

    // The reason initial and unauthenticated stay distinct: a cold start must
    // show a splash, not flash the sign-in screen.
    testWidgets("shows loading, not sign-in, while initial", (tester) async {
      await tester.pumpWidget(_host(const AuthState.initial(), builder));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.text("sign in"), findsNothing);
    });

    testWidgets("shows loading while resolving", (tester) async {
      await tester.pumpWidget(_host(const AuthState.loading(), builder));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets("shows the authenticated branch with the user", (tester) async {
      await tester.pumpWidget(
        _host(const AuthState.authenticated(user: _user), builder),
      );

      expect(find.text("hi Ada"), findsOneWidget);
    });

    testWidgets("shows the unauthenticated branch", (tester) async {
      await tester.pumpWidget(
        _host(const AuthState.unauthenticated(), builder),
      );

      expect(find.text("sign in"), findsOneWidget);
    });

    testWidgets("falls back to unauthenticated on error", (tester) async {
      await tester.pumpWidget(
        _host(
          const AuthState.error(BetterError(message: "offline", stack: null)),
          builder,
        ),
      );

      expect(find.text("sign in"), findsOneWidget);
    });

    testWidgets("uses the error builder when provided", (tester) async {
      await tester.pumpWidget(
        _host(
          const AuthState.error(BetterError(message: "offline", stack: null)),
          BetterAuthBuilder(
            authenticated: (_, _) => const Text("home"),
            unauthenticated: (_) => const Text("sign in"),
            error: (_, e) => Text("oops: ${e.message}"),
          ),
        ),
      );

      expect(find.text("oops: offline"), findsOneWidget);
    });

    testWidgets("uses a custom loading builder", (tester) async {
      await tester.pumpWidget(
        _host(
          const AuthState.initial(),
          BetterAuthBuilder(
            authenticated: (_, _) => const Text("home"),
            unauthenticated: (_) => const Text("sign in"),
            loading: (_) => const Text("splash"),
          ),
        ),
      );

      expect(find.text("splash"), findsOneWidget);
    });
  });

  group("BetterAuthConsumer", () {
    testWidgets("rebuilds when the auth state changes", (tester) async {
      // Regression: updateShouldNotify compared an immutable singleton client,
      // so it was always false and dependents never rebuilt.
      Widget host(AuthState state) => _host(
        state,
        BetterAuthConsumer(
          builder: (_, _, s) => Text(s.user?.name ?? "nobody"),
        ),
      );

      await tester.pumpWidget(host(const AuthState.unauthenticated()));
      expect(find.text("nobody"), findsOneWidget);

      await tester.pumpWidget(host(const AuthState.authenticated(user: _user)));
      expect(find.text("Ada"), findsOneWidget);
    });
  });
}

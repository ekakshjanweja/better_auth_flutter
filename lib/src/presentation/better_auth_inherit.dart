import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:flutter/material.dart";

/// Carries the client and the current [AuthState] down the tree.
///
/// Internal: reach it via `BetterAuthConsumer` or `BetterAuthBuilder`.
class BetterAuthInherit extends InheritedWidget {
  const BetterAuthInherit({
    super.key,
    required this.client,
    required this.state,
    required super.child,
  });

  final BetterAuthClient client;
  final AuthState state;

  static BetterAuthInherit of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<BetterAuthInherit>();
    assert(
      provider != null,
      "No BetterAuthProvider found in context. Wrap your app in "
      "BetterAuthProvider(child: ...).",
    );
    return provider!;
  }

  @override
  bool updateShouldNotify(covariant BetterAuthInherit oldWidget) {
    // Compare state, not client. The client is an immutable singleton, so the
    // previous `client != oldWidget.client` was always false and dependents
    // were never rebuilt — the widgets looked reactive but never updated.
    return state != oldWidget.state;
  }
}

import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/presentation/better_auth_inherit.dart";
import "package:flutter/material.dart";

/// Rebuilds with the client and the current [AuthState] whenever auth state
/// changes.
///
/// For the common "signed in or not" branch, prefer `BetterAuthBuilder`.
///
/// ```dart
/// BetterAuthConsumer(
///   builder: (context, client, state) => Text(
///     state.user?.name ?? "Signed out",
///   ),
/// )
/// ```
class BetterAuthConsumer extends StatelessWidget {
  const BetterAuthConsumer({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BetterAuthClient client,
    AuthState state,
  )
  builder;

  @override
  Widget build(BuildContext context) {
    final inherited = BetterAuthInherit.of(context);
    return builder(context, inherited.client, inherited.state);
  }
}

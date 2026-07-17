import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:better_auth_flutter/src/presentation/better_auth_inherit.dart";
import "package:flutter/material.dart";

/// Branches the tree on authentication state.
///
/// ```dart
/// BetterAuthBuilder(
///   authenticated: (context, user) => HomeScreen(user: user),
///   unauthenticated: (context) => const SignInScreen(),
/// )
/// ```
///
/// [loading] covers both "we haven't looked yet" and "we're looking", which is
/// what keeps the sign-in screen from flashing on cold start while the stored
/// session loads. It defaults to a centered progress indicator.
///
/// [error] is a *failed lookup*, not a signed-out user — typically the network
/// was unreachable, and the session may well still be valid. It defaults to
/// [unauthenticated] so a simple app still behaves sensibly, but handle it
/// explicitly if you want a retry affordance rather than a sign-in prompt.
class BetterAuthBuilder extends StatelessWidget {
  const BetterAuthBuilder({
    super.key,
    required this.authenticated,
    required this.unauthenticated,
    this.loading,
    this.error,
  });

  final Widget Function(BuildContext context, User user) authenticated;
  final Widget Function(BuildContext context) unauthenticated;
  final Widget Function(BuildContext context)? loading;
  final Widget Function(BuildContext context, BetterError error)? error;

  @override
  Widget build(BuildContext context) {
    final state = BetterAuthInherit.of(context).state;

    return switch (state) {
      AuthInitial() || AuthLoading() =>
        loading?.call(context) ??
            const Center(child: CircularProgressIndicator()),
      Authenticated(:final user) => authenticated(context, user),
      Unauthenticated() => unauthenticated(context),
      AuthError(:final error) =>
        this.error?.call(context, error) ?? unauthenticated(context),
    };
  }
}

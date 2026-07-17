import "dart:async";

import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/presentation/better_auth_inherit.dart";
import "package:flutter/material.dart";

/// Subscribes to `BetterAuthFlutter.authStateChanges` and republishes it to the
/// tree, so descendants rebuild when the session changes.
///
/// Wrap your app once, above anything that reads auth state:
///
/// ```dart
/// BetterAuthProvider(
///   child: MaterialApp(home: ...),
/// )
/// ```
class BetterAuthProvider extends StatefulWidget {
  const BetterAuthProvider({super.key, required this.child});

  final Widget child;

  @override
  State<BetterAuthProvider> createState() => _BetterAuthProviderState();
}

class _BetterAuthProviderState extends State<BetterAuthProvider> {
  late AuthState _state = BetterAuthFlutter.authState;
  StreamSubscription<AuthState>? _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = BetterAuthFlutter.authStateChanges.listen((state) {
      if (!mounted) return;
      setState(() => _state = state);
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BetterAuthInherit(
      client: BetterAuthFlutter.client,
      state: _state,
      child: widget.child,
    );
  }
}

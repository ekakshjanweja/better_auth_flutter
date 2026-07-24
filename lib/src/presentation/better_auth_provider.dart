import "dart:async";

import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/session/session_lifecycle_observer.dart";
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
  const BetterAuthProvider({
    super.key,
    required this.child,
    this.refreshOnResume = true,
  });

  final Widget child;

  /// Whether to refresh the session when the app returns to the foreground.
  /// On by default; returning to a backgrounded app is when the session is
  /// most likely stale.
  final bool refreshOnResume;

  @override
  State<BetterAuthProvider> createState() => _BetterAuthProviderState();
}

class _BetterAuthProviderState extends State<BetterAuthProvider> {
  late AuthState _state = BetterAuthFlutter.authState;
  StreamSubscription<AuthState>? _subscription;
  SessionLifecycleObserver? _lifecycle;

  @override
  void initState() {
    super.initState();
    _subscription = BetterAuthFlutter.authStateChanges.listen((state) {
      if (!mounted) return;
      setState(() => _state = state);
    });
    if (widget.refreshOnResume) {
      _lifecycle = SessionLifecycleObserver(
        onResume: BetterAuthFlutter.refreshSession,
      )..attach();
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _lifecycle?.detach();
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

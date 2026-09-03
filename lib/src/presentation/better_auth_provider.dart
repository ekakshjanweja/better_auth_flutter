import "dart:async";

import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/session/session_lifecycle_observer.dart";
import "package:better_auth_flutter/src/presentation/better_auth_inherit.dart";
import "package:connectivity_plus/connectivity_plus.dart";
import "package:flutter/foundation.dart";
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
    this.refreshOnReconnect = true,
  });

  final Widget child;

  /// Whether to refresh the session when the app returns to the foreground.
  /// On by default; returning to a backgrounded app is when the session is
  /// most likely stale.
  final bool refreshOnResume;

  /// Whether to refresh the session when the device regains connectivity.
  /// On by default; coming back online is the other moment the session is
  /// most likely stale. Skipped on web, where the browser owns connectivity.
  final bool refreshOnReconnect;

  @override
  State<BetterAuthProvider> createState() => _BetterAuthProviderState();
}

class _BetterAuthProviderState extends State<BetterAuthProvider> {
  late AuthState _state = BetterAuthFlutter.authState;
  StreamSubscription<AuthState>? _subscription;
  SessionLifecycleObserver? _lifecycle;
  StreamSubscription<List<ConnectivityResult>>? _connectivity;

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
    if (widget.refreshOnReconnect && !kIsWeb) {
      // refreshSession is single-flight, so a burst of connectivity events
      // shares one in-flight request instead of stampeding /get-session.
      _connectivity = Connectivity().onConnectivityChanged.listen((results) {
        if (results.any((result) => result != ConnectivityResult.none)) {
          BetterAuthFlutter.refreshSession();
        }
      });
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _lifecycle?.detach();
    _connectivity?.cancel();
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

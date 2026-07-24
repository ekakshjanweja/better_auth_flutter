import "package:flutter/widgets.dart";

/// Calls [onResume] when the app returns to the foreground.
///
/// Returning to a backgrounded app is exactly when the session is most likely
/// stale, so refreshing there keeps auth state honest without polling. Uses the
/// in-framework [WidgetsBinding] — no extra dependency.
///
/// Calls are throttled: rapid app-switching should not fire a burst of
/// `/get-session` requests. [onResume] is injected rather than hard-wired to
/// the client, which keeps this unit testable.
class SessionLifecycleObserver with WidgetsBindingObserver {
  SessionLifecycleObserver({
    required this.onResume,
    this.throttle = const Duration(seconds: 30),
    DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final void Function() onResume;
  final Duration throttle;
  final DateTime Function() _now;
  DateTime? _lastResume;

  void attach() => WidgetsBinding.instance.addObserver(this);

  void detach() => WidgetsBinding.instance.removeObserver(this);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) return;

    final now = _now();
    final last = _lastResume;
    if (last != null && now.difference(last) < throttle) return;

    _lastResume = now;
    onResume();
  }
}

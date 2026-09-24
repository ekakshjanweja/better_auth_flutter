import "dart:async";

import "package:app_links/app_links.dart";
import "package:flutter/widgets.dart";
import "package:url_launcher/url_launcher.dart";

/// Shared so each [authenticate] does not construct a new plugin client.
final AppLinks _sharedAppLinks = AppLinks();

/// Opens an OAuth URL and waits for the app-scheme callback.
///
/// Replaces `flutter_web_auth_2`. That package's Android Auth Tab path
/// crashes with an uncaught [SecurityException] when the user's default
/// "browser" is a non-exported Activity (common with fintech/loan apps
/// that register as browsers). [url_launcher] + [app_links] avoid that:
/// we launch via `ACTION_VIEW` / Custom Tabs and listen for the deep link
/// on [MainActivity], so a rogue default browser cannot take down the app.
class BrowserAuth {
  BrowserAuth({
    Future<bool> Function(Uri url, {required LaunchMode mode})? launchUrl,
    Future<bool> Function(LaunchMode mode)? supportsLaunchMode,
    this.linkStream,
    this.onAppResumed,
    this.timeout = const Duration(minutes: 5),
    this.cancelGrace = const Duration(milliseconds: 800),
  }) : _launchUrl = launchUrl ?? _defaultLaunch,
       _supportsLaunchMode = supportsLaunchMode ?? _defaultSupports;

  final Future<bool> Function(Uri url, {required LaunchMode mode}) _launchUrl;
  final Future<bool> Function(LaunchMode mode) _supportsLaunchMode;

  /// Test hook. Production uses the shared [AppLinks] stream.
  @visibleForTesting
  final Stream<Uri>? linkStream;

  /// Test hook. Production observes [AppLifecycleState.resumed].
  @visibleForTesting
  final Stream<void>? onAppResumed;
  final Duration timeout;

  /// How long to wait after the app resumes for a deep link before treating
  /// the flow as cancelled. Android often delivers the callback a beat after
  /// [AppLifecycleState.resumed].
  final Duration cancelGrace;

  Completer<String>? _active;
  _ResumeListener? _resume;

  /// Completes an in-flight [authenticate] with `OAUTH_CANCELLED`.
  void cancel([String message = "The sign-in flow was cancelled."]) {
    final active = _active;
    if (active == null || active.isCompleted) return;
    active.completeError(BrowserAuthException("OAUTH_CANCELLED", message));
  }

  /// Whether [uri] is this package's OAuth callback for [callbackUrlScheme].
  ///
  /// Accepts `scheme://callback` (and `scheme:///callback`). Other hosts that
  /// share the scheme — marketing links, password-reset pages — are ignored.
  static bool matchesCallback(Uri uri, String callbackUrlScheme) {
    if (uri.scheme != callbackUrlScheme) return false;
    final host = uri.host;
    if (host == "callback") return true;
    if (host.isNotEmpty) return false;
    final path = uri.path.replaceFirst(RegExp(r"^/"), "");
    return path == "callback";
  }

  /// Opens [url] and completes with the callback URI as a string when a
  /// matching link arrives *after* this call starts.
  ///
  /// A cold-start [AppLinks.getInitialLink] is ignored: it may be leftover
  /// from a previous attempt or an unrelated marketing deep link.
  ///
  /// Returning to the app without a callback (back from Custom Tabs) cancels
  /// the wait instead of sitting on [timeout].
  Future<String> authenticate({
    required String url,
    required String callbackUrlScheme,
  }) async {
    final completer = Completer<String>();
    _active = completer;
    final stream = linkStream ?? _sharedAppLinks.uriLinkStream;

    late final StreamSubscription<Uri> sub;
    sub = stream.listen((uri) {
      if (matchesCallback(uri, callbackUrlScheme) && !completer.isCompleted) {
        completer.complete(uri.toString());
      }
    });

    try {
      final uri = Uri.parse(url);
      var launched = false;

      // Prefer Custom Tabs (Chrome) when available — it does not resolve
      // through the default-browser Activity that triggers the crash.
      if (await _supportsLaunchMode(LaunchMode.inAppBrowserView)) {
        launched = await _launchUrl(uri, mode: LaunchMode.inAppBrowserView);
      }
      if (!launched) {
        launched = await _launchUrl(uri, mode: LaunchMode.externalApplication);
      }
      if (!launched) {
        throw BrowserAuthException(
          "NO_BROWSER",
          "Could not launch the sign-in URL.",
        );
      }

      // Start listening only after the browser is up. Launching Custom Tabs
      // can emit a transient resume that must not cancel the flow.
      _resume = _ResumeListener(
        onResume: () => _scheduleCancelIfStillWaiting(completer),
        injected: onAppResumed,
      )..attach();

      return await completer.future.timeout(
        timeout,
        onTimeout: () => throw BrowserAuthException(
          "OAUTH_TIMEOUT",
          "Timed out waiting for the sign-in callback.",
        ),
      );
    } finally {
      _resume?.detach();
      _resume = null;
      if (identical(_active, completer)) _active = null;
      await sub.cancel();
    }
  }

  void _scheduleCancelIfStillWaiting(Completer<String> completer) {
    Future<void>.delayed(cancelGrace, () {
      if (!completer.isCompleted) {
        completer.completeError(
          BrowserAuthException(
            "OAUTH_CANCELLED",
            "The sign-in flow was cancelled.",
          ),
        );
      }
    });
  }

  static Future<bool> _defaultLaunch(Uri url, {required LaunchMode mode}) =>
      launchUrl(url, mode: mode);

  static Future<bool> _defaultSupports(LaunchMode mode) =>
      supportsLaunchMode(mode);
}

/// Fires [onResume] when the app returns to the foreground.
class _ResumeListener with WidgetsBindingObserver {
  _ResumeListener({required this.onResume, this.injected});

  final void Function() onResume;
  final Stream<void>? injected;
  StreamSubscription<void>? _sub;
  var _observing = false;

  void attach() {
    if (injected != null) {
      _sub = injected!.listen((_) => onResume());
      return;
    }
    try {
      WidgetsBinding.instance.addObserver(this);
      _observing = true;
    } on FlutterError {
      // Pure unit tests have no binding. Timeout / cancel() still apply.
    }
  }

  void detach() {
    _sub?.cancel();
    _sub = null;
    if (!_observing) return;
    WidgetsBinding.instance.removeObserver(this);
    _observing = false;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) onResume();
  }
}

/// A launch or callback failure that [OAuthHandler] turns into a [Result].
class BrowserAuthException implements Exception {
  BrowserAuthException(this.code, this.message);

  final String code;
  final String message;

  @override
  String toString() => "$code: $message";
}

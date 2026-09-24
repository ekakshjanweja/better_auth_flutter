import "dart:async";

import "package:app_links/app_links.dart";
import "package:url_launcher/url_launcher.dart";

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
    this._linkStream,
    this.timeout = const Duration(minutes: 5),
  }) : _launchUrl = launchUrl ?? _defaultLaunch,
       _supportsLaunchMode = supportsLaunchMode ?? _defaultSupports;

  final Future<bool> Function(Uri url, {required LaunchMode mode}) _launchUrl;
  final Future<bool> Function(LaunchMode mode) _supportsLaunchMode;
  final Stream<Uri>? _linkStream;
  final Duration timeout;

  /// Opens [url] and completes with the callback URI as a string when a
  /// link matching [callbackUrlScheme] arrives *after* this call starts.
  ///
  /// A cold-start [AppLinks.getInitialLink] is ignored: it may be leftover
  /// from a previous attempt or an unrelated marketing deep link.
  Future<String> authenticate({
    required String url,
    required String callbackUrlScheme,
  }) async {
    final completer = Completer<String>();
    final stream = _linkStream ?? AppLinks().uriLinkStream;

    bool matches(Uri uri) => uri.scheme == callbackUrlScheme;

    late final StreamSubscription<Uri> sub;
    sub = stream.listen((uri) {
      if (matches(uri) && !completer.isCompleted) {
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

      return await completer.future.timeout(
        timeout,
        onTimeout: () => throw BrowserAuthException(
          "OAUTH_TIMEOUT",
          "Timed out waiting for the sign-in callback.",
        ),
      );
    } finally {
      await sub.cancel();
    }
  }

  static Future<bool> _defaultLaunch(Uri url, {required LaunchMode mode}) =>
      launchUrl(url, mode: mode);

  static Future<bool> _defaultSupports(LaunchMode mode) =>
      supportsLaunchMode(mode);
}

/// A launch or callback failure that [OAuthHandler] turns into a [Result].
class BrowserAuthException implements Exception {
  BrowserAuthException(this.code, this.message);

  final String code;
  final String message;

  @override
  String toString() => "$code: $message";
}

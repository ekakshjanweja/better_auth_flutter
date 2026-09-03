import "package:dio/dio.dart";

import "web_helpers_io.dart"
    if (dart.library.js_interop) "web_helpers_web.dart"
    as impl;

/// Full-page browser redirect (web only; no-op on native).
///
/// On web, OAuth must leave the page: point the browser at the provider with
/// this, and Better Auth redirects back to the configured `callbackURL`
/// afterwards.
void redirectToUrl(String url) => impl.redirectToUrl(url);

/// The current web app origin (e.g. `http://localhost:5000`), or null on
/// native.
String? currentOrigin() => impl.currentOrigin();

/// On web, makes the browser attach/store cookies for cross-origin
/// credentialed requests (`withCredentials = true`). No-op on native
/// platforms, where the cookie jar handles persistence instead.
///
/// Call this on your [Dio] instance when running cookie-mode auth on web:
///
/// ```dart
/// await BetterAuthFlutter.initialize(url: "https://example.com/api/auth");
/// enableWebCredentials(BetterAuthFlutter.dioClient);
/// ```
void enableWebCredentials(Dio dio) => impl.enableWebCredentials(dio);

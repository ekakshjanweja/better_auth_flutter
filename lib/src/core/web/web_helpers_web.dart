import "package:dio/browser.dart";
import "package:dio/dio.dart";
import "package:web/web.dart" as web;

/// Web: navigate the whole page to [url] (the OAuth provider). Better Auth
/// redirects back to the configured `callbackURL` afterwards.
void redirectToUrl(String url) {
  web.window.location.href = url;
}

/// The current web app origin (e.g. `http://localhost:5000`).
String? currentOrigin() => web.window.location.origin;

/// Web: let the browser store and send cookies (it owns the `Cookie` header,
/// which JavaScript is not allowed to set).
void enableWebCredentials(Dio dio) {
  final adapter = dio.httpClientAdapter;
  if (adapter is BrowserHttpClientAdapter) {
    adapter.withCredentials = true;
  } else {
    dio.httpClientAdapter = BrowserHttpClientAdapter()..withCredentials = true;
  }
}

import "package:dio/dio.dart";

/// Native: no browser to redirect.
void redirectToUrl(String url) {}

/// Native: no web origin.
String? currentOrigin() => null;

/// Native: nothing to do; the cookie jar persists cookies.
void enableWebCredentials(Dio dio) {}

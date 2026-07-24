import "dart:convert";
import "dart:typed_data";

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";

/// Serves a fixed JSON body for the /sign-in/social request.
class _StubAdapter implements HttpClientAdapter {
  _StubAdapter(this.body);
  final Map<String, dynamic> body;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async => ResponseBody.fromString(
    jsonEncode(body),
    200,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );

  @override
  void close({bool force = false}) {}
}

BetterAuthClient _client(Map<String, dynamic> socialResponse) {
  final dio = Dio(BaseOptions(baseUrl: "https://example.com/api/auth"))
    ..httpClientAdapter = _StubAdapter(socialResponse);
  return BetterAuthClient(dio, baseUrl: "https://example.com/api/auth");
}

void main() {
  group("SocialCallback.parse", () {
    test("extracts a one-time token from the query", () {
      final cb = SocialCallback.parse("myapp://callback?token=ott_abc");
      expect(cb.token, "ott_abc");
      expect(cb.isError, isFalse);
    });

    test("recognizes alternate token param names", () {
      expect(SocialCallback.parse("app://cb?ott=x").token, "x");
      expect(SocialCallback.parse("app://cb?one_time_token=y").token, "y");
    });

    test("surfaces a provider error", () {
      final cb = SocialCallback.parse("myapp://callback?error=access_denied");
      expect(cb.isError, isTrue);
      expect(cb.error, "access_denied");
      expect(cb.token, isNull);
    });

    test("keeps the full uri", () {
      final cb = SocialCallback.parse("myapp://callback?token=t&state=xyz");
      expect(cb.uri.queryParameters["state"], "xyz");
    });
  });

  group("OAuthHandler.signIn", () {
    test("fails clearly when no scheme is configured", () async {
      final handler = OAuthHandler(
        client: _client({"url": "https://provider/auth", "redirect": true}),
        scheme: null,
      );

      final result = await handler.signIn(provider: SocialProvider.github);
      expect(result, isA<Failure<SocialCallback>>());
      expect(
        (result as Failure<SocialCallback>).error.code,
        "MISSING_CALLBACK_SCHEME",
      );
    });

    test("runs the browser step and parses the callback", () async {
      String? openedUrl;
      String? openedScheme;

      final handler = OAuthHandler(
        client: _client({"url": "https://provider/auth", "redirect": true}),
        scheme: "myapp",
        authenticate: ({required url, required callbackUrlScheme}) async {
          openedUrl = url;
          openedScheme = callbackUrlScheme;
          return "myapp://callback?token=ott_xyz";
        },
      );

      final result = await handler.signIn(provider: SocialProvider.github);

      expect(openedUrl, "https://provider/auth");
      expect(openedScheme, "myapp");
      expect(result, isA<Success<SocialCallback>>());
      expect((result as Success<SocialCallback>).data.token, "ott_xyz");
    });

    test("reports a cancelled browser flow as a failure", () async {
      final handler = OAuthHandler(
        client: _client({"url": "https://provider/auth", "redirect": true}),
        scheme: "myapp",
        authenticate: ({required url, required callbackUrlScheme}) async =>
            throw Exception("user cancelled"),
      );

      final result = await handler.signIn(provider: SocialProvider.github);
      expect((result as Failure<SocialCallback>).error.code, "OAUTH_CANCELLED");
    });

    test("fails when the server returns no authorization url", () async {
      final handler = OAuthHandler(
        client: _client({"url": "", "redirect": false}),
        scheme: "myapp",
        authenticate: ({required url, required callbackUrlScheme}) async =>
            "unused",
      );

      final result = await handler.signIn(provider: SocialProvider.github);
      expect((result as Failure<SocialCallback>).error.code, "NO_REDIRECT_URL");
    });
  });
}

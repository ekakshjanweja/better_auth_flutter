import "dart:convert";
import "dart:typed_data";

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_interceptor.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_options.dart";
import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";

/// Serves a fixed response, optionally with a `set-auth-token` header, and
/// records the Authorization header it received.
class _RecordingAdapter implements HttpClientAdapter {
  _RecordingAdapter({this.setAuthToken});

  final String? setAuthToken;
  String? seenAuthorization;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    seenAuthorization = options.headers["Authorization"] as String?;
    return ResponseBody.fromString(
      jsonEncode({"ok": true}),
      200,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
        if (setAuthToken != null) "set-auth-token": [setAuthToken!],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

Dio _dio(_RecordingAdapter adapter, BearerInterceptor interceptor) =>
    Dio(BaseOptions(baseUrl: "https://example.com"))
      ..httpClientAdapter = adapter
      ..interceptors.add(interceptor);

void main() {
  group("BearerInterceptor", () {
    test(
      "captures the token from the set-auth-token response header",
      () async {
        final storage = InMemoryTokenStorage<String>();
        final adapter = _RecordingAdapter(setAuthToken: "tok_abc");
        final dio = _dio(adapter, BearerInterceptor(storage: storage));

        await dio.post<dynamic>("/sign-in/email");

        expect(await storage.read(), "tok_abc");
      },
    );

    test("attaches a stored token on the next request", () async {
      final storage = InMemoryTokenStorage<String>();
      await storage.write("tok_abc");
      final adapter = _RecordingAdapter();
      final dio = _dio(adapter, BearerInterceptor(storage: storage));

      await dio.get<dynamic>("/get-session");

      expect(adapter.seenAuthorization, "Bearer tok_abc");
    });

    test("sends no Authorization header when there is no token", () async {
      final adapter = _RecordingAdapter();
      final dio = _dio(
        adapter,
        BearerInterceptor(storage: InMemoryTokenStorage<String>()),
      );

      await dio.get<dynamic>("/get-session");

      expect(adapter.seenAuthorization, isNull);
    });

    test("captures on sign-in, then reuses on the following request", () async {
      final storage = InMemoryTokenStorage<String>();
      final signIn = _RecordingAdapter(setAuthToken: "tok_new");
      await _dio(
        signIn,
        BearerInterceptor(storage: storage),
      ).post<dynamic>("/sign-in/email");

      final next = _RecordingAdapter();
      await _dio(
        next,
        BearerInterceptor(storage: storage),
      ).get<dynamic>("/get-session");

      expect(next.seenAuthorization, "Bearer tok_new");
    });

    group("requireSignature", () {
      test("strips the signature when disabled (the default)", () async {
        final storage = InMemoryTokenStorage<String>();
        final adapter = _RecordingAdapter(setAuthToken: "id_part.sig_part");
        final dio = _dio(adapter, BearerInterceptor(storage: storage));

        await dio.post<dynamic>("/sign-in/email");

        expect(await storage.read(), "id_part");
      });

      test("keeps the signature when enabled", () async {
        final storage = InMemoryTokenStorage<String>();
        final adapter = _RecordingAdapter(setAuthToken: "id_part.sig_part");
        final dio = _dio(
          adapter,
          BearerInterceptor(
            storage: storage,
            options: const BearerOptions(requireSignature: true),
          ),
        );

        await dio.post<dynamic>("/sign-in/email");

        expect(await storage.read(), "id_part.sig_part");
      });
    });
  });
}

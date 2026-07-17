import "dart:convert";
import "dart:typed_data";

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/auth/auth_state_controller.dart";
import "package:better_auth_flutter/src/core/auth/auth_state_interceptor.dart";
import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";

/// Returns a fixed HTTP response, so error paths run through real Dio
/// machinery rather than a hand-driven interceptor handler.
class _StubAdapter implements HttpClientAdapter {
  _StubAdapter(this.statusCode);

  final int statusCode;
  final Object? body = null;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async => ResponseBody.fromString(
    body == null ? "" : jsonEncode(body),
    statusCode,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );

  @override
  void close({bool force = false}) {}
}

const _userJson = {
  "id": "1",
  "name": "Ada",
  "email": "ada@example.com",
  "emailVerified": true,
};

Response<dynamic> _response(String path, Object? data) => Response<dynamic>(
  requestOptions: RequestOptions(path: path),
  statusCode: 200,
  data: data,
);

/// Drives the interceptor without a real Dio, and returns the resulting state.
AuthState _afterResponse(AuthStateController controller, Response<dynamic> r) {
  AuthStateInterceptor(controller).onResponse(r, ResponseInterceptorHandler());
  return controller.current;
}

/// Issues a real request that fails with [status], so the interceptor's
/// onError runs exactly as it would in production.
Future<AuthState> _afterFailedRequest(
  AuthStateController controller,
  String path,
  int status,
) async {
  final dio = Dio(BaseOptions(validateStatus: (s) => s != null && s < 300))
    ..httpClientAdapter = _StubAdapter(status)
    ..interceptors.add(AuthStateInterceptor(controller));

  try {
    await dio.post<dynamic>("https://example.com$path");
  } on DioException {
    // Expected.
  }
  return controller.current;
}

void main() {
  group("AuthStateInterceptor", () {
    test("marks authenticated after sign-in", () {
      final state = _afterResponse(
        AuthStateController(),
        _response("/sign-in/email", {"token": "t", "user": _userJson}),
      );

      expect(state, isA<Authenticated>());
      expect(state.user?.email, "ada@example.com");
    });

    test("marks authenticated after sign-up", () {
      final state = _afterResponse(
        AuthStateController(),
        _response("/sign-up/email", {"token": "t", "user": _userJson}),
      );

      expect(state, isA<Authenticated>());
    });

    test("marks authenticated from a session response, with the session", () {
      final state = _afterResponse(
        AuthStateController(),
        _response("/get-session", {
          "user": _userJson,
          "session": {
            "id": "s1",
            "userId": "1",
            "token": "t",
            "expiresAt": "2030-01-01T00:00:00.000Z",
            "createdAt": "2024-01-01T00:00:00.000Z",
            "updatedAt": "2024-01-01T00:00:00.000Z",
          },
        }),
      );

      expect(state, isA<Authenticated>());
      expect((state as Authenticated).session, isNotNull);
    });

    test("marks unauthenticated after sign-out", () {
      final controller = AuthStateController()
        ..setAuthenticated(const User(id: "1", name: "Ada", email: "a@b.c"));

      expect(
        _afterResponse(controller, _response("/sign-out", {"success": true})),
        const Unauthenticated(),
      );
    });

    test("marks unauthenticated after delete-user", () {
      final controller = AuthStateController()
        ..setAuthenticated(const User(id: "1", name: "Ada", email: "a@b.c"));

      expect(
        _afterResponse(
          controller,
          _response("/delete-user", {"success": true}),
        ),
        const Unauthenticated(),
      );
    });

    // Better Auth answers /get-session with a null body when there is no
    // session, so an empty 200 here is definitive.
    test("marks unauthenticated when get-session returns no session", () {
      expect(
        _afterResponse(AuthStateController(), _response("/get-session", null)),
        const Unauthenticated(),
      );
    });

    // With 2FA enabled, sign-in returns {twoFactorRedirect: true} and no user.
    // That is a challenge, not a session — and not a sign-out either.
    test("leaves state untouched on a two-factor challenge", () {
      final controller = AuthStateController();

      final state = _afterResponse(
        controller,
        _response("/sign-in/email", {"twoFactorRedirect": true}),
      );

      expect(state, const AuthState.initial());
    });

    test("marks unauthenticated on a 401 from a normal route", () async {
      final controller = AuthStateController()
        ..setAuthenticated(const User(id: "1", name: "Ada", email: "a@b.c"));

      expect(
        await _afterFailedRequest(controller, "/update-user", 401),
        const Unauthenticated(),
      );
    });

    // A 401 from a sign-in attempt means "wrong password", not "session over".
    // Conflating them signs out a user who mistypes on a re-auth prompt.
    test("keeps the session when sign-in itself returns 401", () async {
      const user = User(id: "1", name: "Ada", email: "a@b.c");
      final controller = AuthStateController()..setAuthenticated(user);

      expect(
        await _afterFailedRequest(controller, "/sign-in/email", 401),
        const AuthState.authenticated(user: user),
      );
    });

    test("ignores non-401 errors", () async {
      const user = User(id: "1", name: "Ada", email: "a@b.c");
      final controller = AuthStateController()..setAuthenticated(user);

      expect(
        await _afterFailedRequest(controller, "/update-user", 500),
        const AuthState.authenticated(user: user),
      );
    });

    test("ignores routes that do not affect auth state", () {
      final controller = AuthStateController();

      expect(
        _afterResponse(controller, _response("/list-accounts", [])),
        const AuthState.initial(),
      );
    });

    // Bookkeeping must never break the response it observed.
    test("does not throw on a malformed user payload", () {
      final controller = AuthStateController();

      expect(
        () => _afterResponse(
          controller,
          _response("/sign-in/email", {"user": "not-an-object"}),
        ),
        returnsNormally,
      );
    });

    test("does not throw on a non-Map body", () {
      expect(
        () => _afterResponse(
          AuthStateController(),
          _response("/sign-in/email", "<html>error</html>"),
        ),
        returnsNormally,
      );
    });

    test("matches paths that include the base URL prefix", () {
      final state = _afterResponse(
        AuthStateController(),
        _response("https://x.com/api/auth/sign-in/email", {
          "token": "t",
          "user": _userJson,
        }),
      );

      expect(state, isA<Authenticated>());
    });
  });
}

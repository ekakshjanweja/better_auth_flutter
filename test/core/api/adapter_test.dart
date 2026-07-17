import "package:better_auth_flutter/src/core/api/adapter.dart";
import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";
import "package:retrofit/retrofit.dart";

/// Builds a DioException as retrofit would surface it for a failed call.
DioException _dioError({
  Object? data,
  int? statusCode,
  DioExceptionType type = DioExceptionType.badResponse,
  String? message,
}) {
  final requestOptions = RequestOptions(path: "/sign-in/email");
  return DioException(
    requestOptions: requestOptions,
    type: type,
    message: message,
    response: statusCode == null && data == null
        ? null
        : Response<dynamic>(
            requestOptions: requestOptions,
            statusCode: statusCode,
            data: data,
          ),
  );
}

Future<Result<String>> _adapt(Object thrown) {
  return BetterAuthCallAdapter<String>().adapt(() => throw thrown);
}

void main() {
  group("BetterAuthCallAdapter", () {
    test("wraps a successful response in Success", () async {
      final result = await BetterAuthCallAdapter<String>().adapt(
        () async => HttpResponse<String>(
          "ok",
          Response<String>(requestOptions: RequestOptions(path: "/")),
        ),
      );

      expect(result, isA<Success<String>>());
      expect((result as Success<String>).data, "ok");
    });

    test("maps a structured Better Auth error body to its code", () async {
      final result = await _adapt(
        _dioError(
          statusCode: 400,
          data: {"code": "INVALID_EMAIL_OR_PASSWORD", "message": "Bad creds"},
        ),
      );

      final error = (result as Failure<String>).error;
      expect(error.code, "INVALID_EMAIL_OR_PASSWORD");
      expect(error.message, "Bad creds");
      expect(error.statusCode, 400);
    });

    // Regression: the adapter used to do `res?.data?["code"]`, which throws
    // NoSuchMethodError on a String body — from inside the catch block, so the
    // exception escaped `adapt` and broke the Result contract entirely.
    test(
      "returns Failure for an HTML String body instead of throwing",
      () async {
        final result = await _adapt(
          _dioError(
            statusCode: 502,
            data: "<html><body>502 Bad Gateway</body></html>",
            message: "Bad gateway",
          ),
        );

        expect(result, isA<Failure<String>>());
        final error = (result as Failure<String>).error;
        expect(error.code, BetterErrorCodes.badResponse);
        expect(error.statusCode, 502);
      },
    );

    test("returns Failure for a List body instead of throwing", () async {
      final result = await _adapt(_dioError(statusCode: 500, data: [1, 2, 3]));

      expect(result, isA<Failure<String>>());
      expect(
        (result as Failure<String>).error.code,
        BetterErrorCodes.badResponse,
      );
    });

    test("returns Failure for a null body", () async {
      final result = await _adapt(_dioError(statusCode: 500));

      expect(result, isA<Failure<String>>());
      expect((result as Failure<String>).error.statusCode, 500);
    });

    test("maps 401 to unauthorized when the body carries no code", () async {
      final result = await _adapt(_dioError(statusCode: 401, data: ""));

      final error = (result as Failure<String>).error;
      expect(error.code, BetterErrorCodes.unauthorized);
      expect(error.isUnauthorized, isTrue);
    });

    test("maps 429 to rate limited", () async {
      final result = await _adapt(_dioError(statusCode: 429, data: ""));

      expect(
        (result as Failure<String>).error.code,
        BetterErrorCodes.rateLimited,
      );
    });

    test("maps timeouts to the timeout code with no status", () async {
      final result = await _adapt(
        _dioError(type: DioExceptionType.receiveTimeout),
      );

      final error = (result as Failure<String>).error;
      expect(error.code, BetterErrorCodes.timeout);
      expect(error.statusCode, isNull);
      expect(error.isNetworkError, isTrue);
    });

    test("maps connection errors to the network code", () async {
      final result = await _adapt(
        _dioError(type: DioExceptionType.connectionError),
      );

      final error = (result as Failure<String>).error;
      expect(error.code, BetterErrorCodes.networkError);
      expect(error.isNetworkError, isTrue);
    });

    test("maps cancellation to the cancelled code", () async {
      final result = await _adapt(_dioError(type: DioExceptionType.cancel));

      expect(
        (result as Failure<String>).error.code,
        BetterErrorCodes.cancelled,
      );
    });

    // Forward-compat: a code from a newer server must survive verbatim rather
    // than being flattened into a generic error.
    test("preserves an unrecognized server code verbatim", () async {
      final result = await _adapt(
        _dioError(
          statusCode: 400,
          data: {"code": "SOME_FUTURE_PLUGIN_ERROR", "message": "New"},
        ),
      );

      expect(
        (result as Failure<String>).error.code,
        "SOME_FUTURE_PLUGIN_ERROR",
      );
    });

    test(
      "returns Failure for a non-Dio exception instead of throwing",
      () async {
        final result = await _adapt(StateError("boom"));

        expect(result, isA<Failure<String>>());
        expect(
          (result as Failure<String>).error.code,
          BetterErrorCodes.unknown,
        );
      },
    );
  });
}

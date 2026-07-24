import "package:better_auth_flutter/src/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/utils/logger.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

/// Converts retrofit calls into [Result], so that no Better Auth API method
/// throws.
///
/// Every failure path here must stay total: if this adapter throws, the sealed
/// [Result] contract is broken and the exception escapes into caller code that
/// has no reason to expect it.
class BetterAuthCallAdapter<T>
    extends CallAdapter<Future<HttpResponse<T>>, Future<Result<T>>> {
  @override
  Future<Result<T>> adapt(Future<HttpResponse<T>> Function() call) async {
    try {
      final httpResponse = await call();
      return Result<T>.ok(httpResponse.data);
    } on DioException catch (e, s) {
      return Result.err(_mapDioException(e, s));
    } catch (e, s) {
      BetterAuthLog.error("Unexpected error", e, s);
      return Result.err(
        BetterError(
          code: BetterErrorCodes.unknown,
          message: e.toString(),
          stack: s.toString(),
        ),
      );
    }
  }
}

BetterError _mapDioException(DioException e, StackTrace s) {
  final status = e.response?.statusCode;
  final data = e.response?.data;

  // The body is only subscriptable when it actually is a Map. A proxy 502
  // serves HTML (a String), and an unhandled server error can serve anything;
  // subscripting those throws NoSuchMethodError from inside the catch block.
  final body = data is Map
      ? data.cast<String, dynamic>()
      : const <String, dynamic>{};

  final serverCode = body["code"];
  final serverMessage = body["message"];

  final code = serverCode is String && serverCode.isNotEmpty
      ? serverCode
      : _transportCode(e.type, status);

  final message = serverMessage is String && serverMessage.isNotEmpty
      ? serverMessage
      : e.message ?? "Request failed";

  BetterAuthLog.error("Request failed: $code (status: $status)", e, s);

  return BetterError(
    code: code,
    message: message,
    statusCode: status,
    stack: s.toString(),
  );
}

/// Derives a code for failures that carry no structured Better Auth error body.
String _transportCode(DioExceptionType type, int? status) => switch (type) {
  DioExceptionType.connectionTimeout ||
  DioExceptionType.sendTimeout ||
  DioExceptionType.receiveTimeout => BetterErrorCodes.timeout,
  DioExceptionType.connectionError => BetterErrorCodes.networkError,
  DioExceptionType.cancel => BetterErrorCodes.cancelled,
  _ => switch (status) {
    401 => BetterErrorCodes.unauthorized,
    429 => BetterErrorCodes.rateLimited,
    _ => BetterErrorCodes.badResponse,
  },
};

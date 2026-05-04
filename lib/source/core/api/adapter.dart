import "package:better_auth_flutter/source/core/api/models/result/better_error/better_error.dart";
import "package:better_auth_flutter/source/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/source/core/utils/logger.dart";
import "package:dio/dio.dart";
import "package:retrofit/retrofit.dart";

class BetterAuthCallAdapter<T>
    extends CallAdapter<Future<HttpResponse<T>>, Future<Result<T>>> {
  @override
  Future<Result<T>> adapt(Future<HttpResponse<T>> Function() call) async {
    try {
      final httpResponse = await call();
      final data = httpResponse.data;
      return Result<T>.ok(data);
    } on DioException catch (e, s) {
      final res = e.response;
      logger.i(res?.headers);
      final status = res?.statusCode;
      logger.e("DioException", error: e, stackTrace: s);
      logger.e("Status: $status, Body: ${res?.data}");
      return Result.err(
        BetterError(
          code: res?.data?["code"] ?? "ERROR",
          message: res?.data?["message"] ?? e.message,
          stack: s.toString(),
        ),
      );
    } catch (e, s) {
      logger.e("Unknown Error", error: e, stackTrace: s);
      return Result.err(
        BetterError(message: e.toString(), stack: s.toString()),
      );
    }
  }
}

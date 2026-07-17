import "package:dio/dio.dart";
import "package:better_auth_flutter/src/core/api/interceptor.dart";

class BearerAuthInterceptor extends Interceptor {
  final String Function() getToken;
  final RemoveNullsInterceptor _removeNulls = RemoveNullsInterceptor();

  BearerAuthInterceptor({required this.getToken});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = getToken();
    if (token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }
    _removeNulls.onRequest(options, handler);
  }
}

import "package:dio/dio.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_auth_interceptor.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_options.dart";

extension BetterAuthBearer on Dio {
  void useBearerAuth({
    required String Function() getToken,
    BearerOptions? options,
  }) {
    interceptors.add(
      BearerAuthInterceptor(
        getToken: () => getToken().isEmpty ? "" : getToken(),
      ),
    );
  }
}

Dio createDioWithBearer({
  required String Function() getToken,
  String? baseUrl,
  BearerOptions? options,
}) {
  final dio = baseUrl != null ? Dio(BaseOptions(baseUrl: baseUrl)) : Dio();
  dio.useBearerAuth(getToken: getToken, options: options);
  return dio;
}

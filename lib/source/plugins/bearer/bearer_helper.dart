import "package:dio/dio.dart";

class BearerAuthHelper {
  final String Function() getToken;

  BearerAuthHelper({required this.getToken});

  Map<String, String> get authHeaders {
    final token = getToken();
    if (token.isEmpty) return {};
    return {"Authorization": "Bearer $token"};
  }

  Map<String, String> headersWith(Map<String, String> additional) {
    return {...authHeaders, ...additional};
  }
}

extension BearerAuthExt on Dio {
  void addBearerAuth(String Function() getToken) {
    interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        final token = getToken();
        if (token.isNotEmpty) {
          options.headers["Authorization"] = "Bearer $token";
        }
        handler.next(options);
      },
    ));
  }
}
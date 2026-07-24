import "package:better_auth_flutter/src/core/storage/token_storage.dart";
import "package:better_auth_flutter/src/plugins/bearer/bearer_options.dart";
import "package:dio/dio.dart";

/// Bearer-token authentication for Better Auth.
///
/// This replaces three earlier, disconnected implementations. Critically, none
/// of them read the `set-auth-token` response header, so bearer mode could not
/// actually work — the client never obtained a token to send. This interceptor
/// closes that loop:
///
/// - **on response:** captures the token Better Auth returns in `set-auth-token`
///   (sent after sign-in) and persists it via [storage];
/// - **on request:** attaches it as `Authorization: Bearer <token>`.
class BearerInterceptor extends Interceptor {
  BearerInterceptor({
    required this.storage,
    this.options = const BearerOptions(),
  });

  final TokenStorage<String> storage;
  final BearerOptions options;

  static const String _setAuthTokenHeader = "set-auth-token";

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await storage.read();
    if (token != null && token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }
    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    final token = response.headers.value(_setAuthTokenHeader);
    if (token != null && token.isNotEmpty) {
      await storage.write(_applySignaturePolicy(token));
    }
    handler.next(response);
  }

  /// Better Auth's session token is `<id>.<signature>`. The `set-auth-token`
  /// header carries the full signed form.
  ///
  /// When the server's `bearer({ requireSignature })` is enabled, the signature
  /// must be presented, so the token is stored verbatim. When it is disabled
  /// (the default on both sides), the server expects the unsigned token, so the
  /// signature is stripped. A mismatch between this flag and the server's
  /// produces bare 401s with no useful error, so keep them in sync.
  String _applySignaturePolicy(String token) {
    if (options.requireSignature) return token;
    final dot = token.indexOf(".");
    return dot == -1 ? token : token.substring(0, dot);
  }
}

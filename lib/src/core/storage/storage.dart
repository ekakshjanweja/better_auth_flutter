import "dart:io";

abstract class StorageInterface {
  static late final String basePath;

  Future<void> setCookies(String url, List<Cookie> cookies);
  Future<List<Cookie>> getCookies(String url);

  static String distillUrl(String url) {
    final uri = Uri.parse(url);
    bool isAuthRoute = uri.path.contains("/api/auth");
    if (isAuthRoute) {
      final tempUri = Uri(scheme: uri.scheme, host: uri.host);
      return tempUri.toString();
    } else {
      return uri.toString();
    }
  }
}

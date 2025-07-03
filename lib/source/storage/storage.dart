import "dart:io";

abstract class StorageInterface {
  static late final String basePath;
  Future<void> setCookies(String url, List<Cookie> cookies);
  Future<List<Cookie>> getCookies(String url);
}

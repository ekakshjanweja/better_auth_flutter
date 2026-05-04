import "dart:io";

abstract class StorageInterface {
  static late final String basePath;

  Future<void> saveCookies(String url, List<Cookie> cookies);
  Future<List<Cookie>> loadCookies(String url);
}

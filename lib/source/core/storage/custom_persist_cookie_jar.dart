import "package:better_auth_flutter/source/core/storage/storage.dart";
import "package:cookie_jar/cookie_jar.dart";

class CustomPersistCookieJar extends PersistCookieJar {
  final StorageInterface? store;

  CustomPersistCookieJar({required this.store, required super.storage});

  @override
  Future<void> saveFromResponse(Uri uri, List<Cookie> cookies) async {
    await store?.saveCookies(uri.host, cookies);
    return super.saveFromResponse(uri, cookies);
  }

  @override
  Future<List<Cookie>> loadForRequest(Uri uri) async {
    return await store?.loadCookies(uri.host) ?? [];
  }
}

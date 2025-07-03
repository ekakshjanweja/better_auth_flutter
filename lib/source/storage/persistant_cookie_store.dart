import "package:better_auth_flutter/source/storage/storage.dart";
import "package:cookie_jar/cookie_jar.dart";

class PersistantCookieStore extends PersistCookieJar {
  final StorageInterface store;
  PersistantCookieStore({required this.store, required super.storage});

  @override
  Future<void> saveFromResponse(Uri uri, List<Cookie> cookies) async {
    await store.setCookies(uri.host, cookies);
    return super.saveFromResponse(uri, cookies);
  }

  @override
  Future<List<Cookie>> loadForRequest(Uri uri) async {
    return await store.getCookies(uri.host);
  }
}

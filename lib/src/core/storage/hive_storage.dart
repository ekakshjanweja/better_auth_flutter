import "dart:io";

import "package:better_auth_flutter/src/core/storage/cookie_codec.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:hive/hive.dart";
import "package:path_provider/path_provider.dart";

/// Unencrypted, on-disk cookie storage backed by Hive.
///
/// Session cookies are bearer credentials; this backend stores them in
/// plaintext in the application documents directory, where a device backup or
/// a rooted/jailbroken read can recover a live session. Prefer `SecureStorage`
/// unless you have a specific reason not to (for example desktop platforms
/// where the secure backend needs native dependencies).
class HiveStorage implements StorageInterface {
  static const String _boxName = "better_auth_cookies";

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    await Hive.openBox(_boxName);
  }

  final _box = Hive.box(_boxName);

  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async {
    // Stored as a single JSON string rather than a List<Map>: Hive cannot
    // round-trip a DateTime or an enum nested inside a map, which is what
    // silently broke every persisted session before.
    await _box.put(url, CookieCodec.encodeList(cookies));
  }

  @override
  Future<List<Cookie>> loadCookies(String url) async {
    final data = _box.get(url);
    if (data == null) return const [];

    if (data is String) return CookieCodec.decodeList(data);

    // Legacy rows from before the JSON migration: best-effort decode, and drop
    // anything unreadable so a stale box costs a sign-in rather than a crash.
    if (data is List) return CookieCodec.decodeMaps(data);

    return const [];
  }

  @override
  Future<void> deleteCookies(String url) async {
    await _box.delete(url);
  }

  @override
  Future<void> deleteAll() async {
    await _box.clear();
  }
}

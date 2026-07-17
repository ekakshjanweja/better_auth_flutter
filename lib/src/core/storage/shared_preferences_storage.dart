import "dart:io";

import "package:better_auth_flutter/src/core/storage/cookie_codec.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:shared_preferences/shared_preferences.dart";

/// Unencrypted cookie storage backed by `shared_preferences`.
///
/// Stores session cookies in plaintext (`NSUserDefaults` / `SharedPreferences`).
/// Useful as a fallback on desktop platforms where the secure backend requires
/// native dependencies such as `libsecret`; prefer `SecureStorage` elsewhere.
class SharedPreferencesStorage implements StorageInterface {
  static const String _keyPrefix = "better_auth_cookies::";

  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get _p => _prefs!;

  String _storageKey(String url) => "$_keyPrefix$url";

  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async {
    await _p.setString(_storageKey(url), CookieCodec.encodeList(cookies));
  }

  @override
  Future<List<Cookie>> loadCookies(String url) async {
    return CookieCodec.decodeList(_p.getString(_storageKey(url)));
  }

  @override
  Future<void> deleteCookies(String url) async {
    await _p.remove(_storageKey(url));
  }

  @override
  Future<void> deleteAll() async {
    final keys = _p.getKeys().where((k) => k.startsWith(_keyPrefix)).toList();
    for (final key in keys) {
      await _p.remove(key);
    }
  }
}

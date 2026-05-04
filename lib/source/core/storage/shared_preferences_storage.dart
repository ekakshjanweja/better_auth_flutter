import "dart:convert";
import "dart:io";

import "package:better_auth_flutter/source/core/storage/storage.dart";
import "package:shared_preferences/shared_preferences.dart";

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
    final list = cookies
        .map(
          (c) => {
            "name": c.name,
            "value": c.value,
            "domain": c.domain,
            "path": c.path,
            "expires": c.expires?.millisecondsSinceEpoch,
            "httpOnly": c.httpOnly,
            "secure": c.secure,
            "sameSite": c.sameSite?.name,
          },
        )
        .toList();

    await _p.setString(_storageKey(url), jsonEncode(list));
  }

  @override
  Future<List<Cookie>> loadCookies(String url) async {
    final raw = _p.getString(_storageKey(url));
    if (raw == null || raw.isEmpty) return [];

    final decoded = jsonDecode(raw) as List<dynamic>;

    return decoded.map<Cookie>((c) {
      final m = c as Map<String, dynamic>;
      final cookie = Cookie(m["name"]! as String, m["value"]! as String);
      final expires = m["expires"];
      cookie.expires = expires != null
          ? DateTime.fromMillisecondsSinceEpoch((expires as num).toInt())
          : null;
      cookie.path = m["path"] as String?;
      cookie.domain = m["domain"] as String?;
      cookie.httpOnly = m["httpOnly"] as bool? ?? false;
      cookie.secure = m["secure"] as bool? ?? false;
      cookie.sameSite = _parseSameSite(m["sameSite"]);
      return cookie;
    }).toList();
  }

  static SameSite? _parseSameSite(Object? raw) {
    if (raw is! String) return null;
    for (final v in SameSite.values) {
      if (v.name == raw) return v;
    }
    return null;
  }
}

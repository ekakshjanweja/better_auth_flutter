import "dart:convert";
import "dart:io";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:shared_preferences/shared_preferences.dart";

class LocalStorage implements StorageInterface {
  static SharedPreferences? _sharedPreferences;

  static SharedPreferences get _prefs => _sharedPreferences!;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setCookies(String url, List<Cookie> cookies) async {
    final list =
        cookies
            .map(
              (c) => {
                "name": c.name,
                "value": c.value,
                "expires": c.expires?.millisecondsSinceEpoch,
                "path": c.path,
                "domain": c.domain,
                "httpOnly": c.httpOnly,
                "secure": c.secure,
              },
            )
            .toList();

    final jsonString = jsonEncode(list);
    await _prefs.setString(StorageInterface.distillUrl(url), jsonString);
  }

  @override
  Future<List<Cookie>> getCookies(String url) async {
    final jsonString = _prefs.getString(StorageInterface.distillUrl(url));
    if (jsonString == null) return [];

    try {
      final data = jsonDecode(jsonString) as List;
      return data.map<Cookie>((c) {
        final cookie = Cookie(c["name"], c["value"]);
        cookie.expires =
            c["expires"] != null
                ? DateTime.fromMillisecondsSinceEpoch(c["expires"])
                : null;
        cookie.path = c["path"];
        cookie.domain = c["domain"];
        cookie.httpOnly = c["httpOnly"] ?? false;
        cookie.secure = c["secure"] ?? false;
        return cookie;
      }).toList();
    } catch (e) {
      // If JSON parsing fails, return empty list
      return [];
    }
  }
}

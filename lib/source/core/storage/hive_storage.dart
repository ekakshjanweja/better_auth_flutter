import "dart:io";

import "package:better_auth_flutter/source/core/storage/storage.dart";
import "package:hive/hive.dart";
import "package:path_provider/path_provider.dart";

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
    final list = cookies
        .map(
          (c) => {
            "name": c.name,
            "value": c.value,
            "domain": c.domain,
            "path": c.path,
            "expires": c.expires,
            "httpOnly": c.httpOnly,
            "secure": c.secure,
            "sameSite": c.sameSite,
          },
        )
        .toList();

    await _box.put(url, list);
  }

  @override
  Future<List<Cookie>> loadCookies(String url) async {
    final data = await _box.get(url);

    if (data == null) return [];

    final cookies = (data as List<dynamic>).map<Cookie>((c) {
      final cookie = Cookie(c["name"], c["value"]);
      cookie.expires = c["expires"] != null
          ? DateTime.fromMillisecondsSinceEpoch(c["expires"])
          : null;
      cookie.path = c["path"];
      cookie.domain = c["domain"];
      cookie.httpOnly = c["httpOnly"];
      cookie.secure = c["secure"];
      cookie.sameSite = c["sameSite"];
      return cookie;
    }).toList();

    return cookies;
  }
}

import "package:cookie_jar/cookie_jar.dart";

class MemoryStorage implements Storage {
  Map<String, dynamic> data = {};
  @override
  Future<void> delete(String key) async {
    data.removeWhere((k, v) => k == key);
  }

  @override
  Future<void> deleteAll(List<String> keys) async {
    data = {};
  }

  @override
  Future<void> init(bool persistSession, bool ignoreExpires) async {}

  @override
  Future<String?> read(String key) async {
    return data["key"];
  }

  @override
  Future<void> write(String key, String value) async {
    data["key"] = value;
  }
}

import "dart:io";

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter_secure_storage_platform_interface/flutter_secure_storage_platform_interface.dart";
import "package:flutter_test/flutter_test.dart";

/// In-memory implementation of the secure-storage platform channel, so the
/// codec + chunking logic is testable without a device keychain.
class _FakeSecureStoragePlatform extends FlutterSecureStoragePlatform {
  final Map<String, String> store = {};

  @override
  Future<void> write({
    required String key,
    required String value,
    required Map<String, String> options,
  }) async => store[key] = value;

  @override
  Future<String?> read({
    required String key,
    required Map<String, String> options,
  }) async => store[key];

  @override
  Future<void> delete({
    required String key,
    required Map<String, String> options,
  }) async => store.remove(key);

  @override
  Future<Map<String, String>> readAll({
    required Map<String, String> options,
  }) async => Map.of(store);

  @override
  Future<void> deleteAll({required Map<String, String> options}) async =>
      store.clear();

  @override
  Future<bool> containsKey({
    required String key,
    required Map<String, String> options,
  }) async => store.containsKey(key);
}

Cookie _cookie(String name, String value) => Cookie(name, value)
  ..domain = "example.com"
  ..path = "/"
  ..expires = DateTime.fromMillisecondsSinceEpoch(1893456000000);

void main() {
  late _FakeSecureStoragePlatform platform;
  late SecureStorage storage;

  setUp(() {
    platform = _FakeSecureStoragePlatform();
    FlutterSecureStoragePlatform.instance = platform;
    storage = SecureStorage();
  });

  group("SecureStorage", () {
    test("round-trips cookies through the keychain", () async {
      await storage.saveCookies("example.com", [_cookie("session", "abc")]);

      final loaded = await storage.loadCookies("example.com");
      expect(loaded.single.name, "session");
      expect(loaded.single.value, "abc");
      expect(loaded.single.expires, isNotNull);
    });

    test("returns empty for an unknown host", () async {
      expect(await storage.loadCookies("nope.com"), isEmpty);
    });

    test("chunks a payload larger than one keychain item", () async {
      final small = SecureStorage(chunkSize: 250);
      await small.saveCookies("example.com", [_cookie("session", "x" * 400)]);

      // Stored across multiple chunk entries plus an index.
      expect(
        platform.store.keys.where((k) => k.contains("::__chunks__")),
        isNotEmpty,
      );
      expect(
        platform.store.keys.where((k) => RegExp(r"::\d+$").hasMatch(k)).length,
        greaterThan(1),
      );

      final loaded = await small.loadCookies("example.com");
      expect(loaded.single.value, "x" * 400);
    });

    test("re-saving a smaller payload replaces prior chunks", () async {
      // chunkSize 250: the "y"*400 cookie chunks; the tiny "b" cookie fits in
      // one entry, so no chunk keys should survive the second save.
      final small = SecureStorage(chunkSize: 250);
      await small.saveCookies("example.com", [_cookie("a", "y" * 400)]);
      await small.saveCookies("example.com", [_cookie("b", "z")]);

      final loaded = await small.loadCookies("example.com");
      expect(loaded.map((c) => c.name), ["b"]);
      // No orphaned chunk entries from the first, larger save.
      expect(
        platform.store.keys.where((k) => RegExp(r"::\d+$").hasMatch(k)),
        isEmpty,
      );
    });

    test("deleteCookies clears both plain and chunked entries", () async {
      final small = SecureStorage(chunkSize: 250);
      await small.saveCookies("example.com", [_cookie("a", "y" * 400)]);
      await small.deleteCookies("example.com");

      expect(await small.loadCookies("example.com"), isEmpty);
      expect(platform.store, isEmpty);
    });

    test("deleteAll only clears this package's keys", () async {
      platform.store["unrelated_app_key"] = "keep me";
      await storage.saveCookies("example.com", [_cookie("session", "abc")]);

      await storage.deleteAll();

      expect(platform.store.containsKey("unrelated_app_key"), isTrue);
      expect(await storage.loadCookies("example.com"), isEmpty);
    });
  });
}

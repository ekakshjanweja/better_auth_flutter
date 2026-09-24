import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter_secure_storage_platform_interface/flutter_secure_storage_platform_interface.dart";
import "package:flutter_test/flutter_test.dart";

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

void main() {
  late _FakeSecureStoragePlatform platform;
  late SecureTokenStorage storage;

  setUp(() {
    platform = _FakeSecureStoragePlatform();
    FlutterSecureStoragePlatform.instance = platform;
    storage = SecureTokenStorage();
  });

  test("round-trips a bearer token through the keychain", () async {
    await storage.write("sess.sig");
    expect(await storage.read(), "sess.sig");
    await storage.delete();
    expect(await storage.read(), isNull);
  });
}

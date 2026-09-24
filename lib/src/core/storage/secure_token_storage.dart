import "package:better_auth_flutter/src/core/storage/token_storage.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";

/// [TokenStorage] backed by the platform keychain / keystore.
///
/// This is the default in bearer mode on native platforms, so a signed-in
/// session survives an app restart — the same default cookie mode already
/// has via [SecureStorage].
class SecureTokenStorage implements TokenStorage<String> {
  SecureTokenStorage({FlutterSecureStorage? storage})
    : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  static const String _key = "better_auth_bearer_token";

  @override
  Future<String?> read() => _storage.read(key: _key);

  @override
  Future<void> write(String token) => _storage.write(key: _key, value: token);

  @override
  Future<void> delete() => _storage.delete(key: _key);
}

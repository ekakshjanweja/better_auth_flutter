import "dart:io";

import "package:better_auth_flutter/src/core/storage/cookie_codec.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";

/// Encrypted cookie storage backed by the platform keychain / keystore.
///
/// This is the default on native platforms. Session cookies are credentials, so
/// storing them in the keychain (rather than a plaintext Hive box or
/// SharedPreferences) is the right default — a device backup or a rooted read
/// cannot recover the session.
///
/// iOS keychain items have a practical size limit, and a jar of session plus
/// OAuth-state cookies can exceed it. Values are therefore chunked: a large
/// entry is split across several keys, with an index entry recording the count.
class SecureStorage implements StorageInterface {
  SecureStorage({FlutterSecureStorage? storage, this.chunkSize = 2048})
    : _storage = storage ?? const FlutterSecureStorage();

  final FlutterSecureStorage _storage;

  /// Max characters per keychain entry before splitting into chunks.
  final int chunkSize;

  static const String _prefix = "better_auth_cookies::";
  static const String _chunkCountSuffix = "::__chunks__";

  String _key(String url) => "$_prefix$url";

  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async {
    final key = _key(url);
    await _deleteChunks(key);

    final encoded = CookieCodec.encodeList(cookies);
    if (encoded.length <= chunkSize) {
      await _storage.write(key: key, value: encoded);
      return;
    }

    // Too large for one item: split, and record the chunk count so we know how
    // many to read back.
    final chunks = _split(encoded, chunkSize);
    await _storage.write(
      key: "$key$_chunkCountSuffix",
      value: chunks.length.toString(),
    );
    for (var i = 0; i < chunks.length; i++) {
      await _storage.write(key: "$key::$i", value: chunks[i]);
    }
  }

  @override
  Future<List<Cookie>> loadCookies(String url) async {
    final key = _key(url);

    final countRaw = await _storage.read(key: "$key$_chunkCountSuffix");
    if (countRaw != null) {
      final count = int.tryParse(countRaw) ?? 0;
      final buffer = StringBuffer();
      for (var i = 0; i < count; i++) {
        final chunk = await _storage.read(key: "$key::$i");
        if (chunk == null) return const []; // Corrupt: re-authenticate.
        buffer.write(chunk);
      }
      return CookieCodec.decodeList(buffer.toString());
    }

    return CookieCodec.decodeList(await _storage.read(key: key));
  }

  @override
  Future<void> deleteCookies(String url) async {
    final key = _key(url);
    await _storage.delete(key: key);
    await _deleteChunks(key);
  }

  @override
  Future<void> deleteAll() async {
    final all = await _storage.readAll();
    for (final key in all.keys) {
      if (key.startsWith(_prefix)) await _storage.delete(key: key);
    }
  }

  Future<void> _deleteChunks(String key) async {
    final countRaw = await _storage.read(key: "$key$_chunkCountSuffix");
    if (countRaw == null) return;
    final count = int.tryParse(countRaw) ?? 0;
    await _storage.delete(key: "$key$_chunkCountSuffix");
    for (var i = 0; i < count; i++) {
      await _storage.delete(key: "$key::$i");
    }
  }

  static List<String> _split(String value, int size) {
    final chunks = <String>[];
    for (var i = 0; i < value.length; i += size) {
      chunks.add(
        value.substring(i, i + size > value.length ? value.length : i + size),
      );
    }
    return chunks;
  }
}

import "dart:io";

import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";

/// Minimal in-memory store so [BetterAuthFlutter.initialize] never reaches
/// `SecureStorage`, which needs platform channels.
class _NoopStorage implements StorageInterface {
  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async {}

  @override
  Future<List<Cookie>> loadCookies(String url) async => const [];

  @override
  Future<void> deleteCookies(String url) async {}

  @override
  Future<void> deleteAll() async {}
}

void main() {
  // `initialize` is a one-shot guarded by a static flag and assigns `late final`
  // fields, so this file gets exactly one call to it.
  test("initialize derives the Origin header from the base url", () async {
    await BetterAuthFlutter.initialize(
      url: "https://auth.example.com/api/auth",
      dio: Dio(),
      store: _NoopStorage(),
      hydrateOnInit: false,
    );

    // Path stripped: Better Auth compares against `scheme://host[:port]`, and
    // sending the full base url would fail the trusted-origin match.
    expect(
      BetterAuthFlutter.dioClient.options.headers["origin"],
      "https://auth.example.com",
    );
  });
}

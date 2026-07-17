import "dart:io";

import "package:better_auth_flutter/src/core/storage/custom_persist_cookie_jar.dart";
import "package:better_auth_flutter/src/core/storage/memory_storage.dart";
import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:flutter_test/flutter_test.dart";

/// An in-memory [StorageInterface] that records how often it is read, so tests
/// can assert hydration happens once per host rather than on every request.
class FakeStorage implements StorageInterface {
  final Map<String, List<Cookie>> data = {};
  int loadCallCount = 0;

  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async {
    data[url] = cookies;
  }

  @override
  Future<List<Cookie>> loadCookies(String url) async {
    loadCallCount++;
    return data[url] ?? const [];
  }

  @override
  Future<void> deleteCookies(String url) async {
    data.remove(url);
  }

  @override
  Future<void> deleteAll() async {
    data.clear();
  }
}

CustomPersistCookieJar _jar(StorageInterface? store) =>
    CustomPersistCookieJar(store: store, storage: MemoryStorage());

Cookie _cookie(
  String name,
  String value, {
  bool secure = false,
  String path = "/",
  DateTime? expires,
}) => Cookie(name, value)
  ..domain = "example.com"
  ..path = path
  ..secure = secure
  ..expires = expires;

void main() {
  group("CustomPersistCookieJar scoping", () {
    // Regression: loadForRequest used to return store.loadCookies(uri.host)
    // without calling super, bypassing every scoping rule below.

    test("does not send a Secure cookie over plain HTTP", () async {
      final jar = _jar(FakeStorage());
      final https = Uri.parse("https://example.com/api/auth");

      await jar.saveFromResponse(https, [
        _cookie("session", "abc", secure: true),
      ]);

      final overHttps = await jar.loadForRequest(https);
      final overHttp = await jar.loadForRequest(
        Uri.parse("http://example.com/api/auth"),
      );

      expect(overHttps.map((c) => c.name), contains("session"));
      expect(overHttp.map((c) => c.name), isNot(contains("session")));
    });

    test("does not send an expired cookie", () async {
      final jar = _jar(FakeStorage());
      final uri = Uri.parse("https://example.com/api/auth");

      await jar.saveFromResponse(uri, [
        _cookie(
          "stale",
          "x",
          expires: DateTime.now().subtract(const Duration(days: 1)),
        ),
        _cookie(
          "fresh",
          "y",
          expires: DateTime.now().add(const Duration(days: 1)),
        ),
      ]);

      final loaded = await jar.loadForRequest(uri);

      expect(loaded.map((c) => c.name), contains("fresh"));
      expect(loaded.map((c) => c.name), isNot(contains("stale")));
    });

    // cookie_jar's own filter is `(secure && https) || !expired`, which lets an
    // expired Secure cookie through over HTTPS.
    test("does not send an expired Secure cookie over HTTPS", () async {
      final jar = _jar(FakeStorage());
      final uri = Uri.parse("https://example.com/api/auth");

      await jar.saveFromResponse(uri, [
        _cookie(
          "stale_session",
          "x",
          secure: true,
          expires: DateTime.now().subtract(const Duration(days: 1)),
        ),
      ]);

      expect(await jar.loadForRequest(uri), isEmpty);
    });

    test("does not send a path-scoped cookie to a non-matching path", () async {
      final jar = _jar(FakeStorage());

      await jar.saveFromResponse(Uri.parse("https://example.com/admin/x"), [
        _cookie("admin_only", "v", path: "/admin"),
      ]);

      final onAdmin = await jar.loadForRequest(
        Uri.parse("https://example.com/admin/x"),
      );
      final onPublic = await jar.loadForRequest(
        Uri.parse("https://example.com/public"),
      );

      expect(onAdmin.map((c) => c.name), contains("admin_only"));
      expect(onPublic.map((c) => c.name), isNot(contains("admin_only")));
    });
  });

  group("CustomPersistCookieJar persistence", () {
    test("survives a cold start via the durable store", () async {
      final store = FakeStorage();
      final uri = Uri.parse("https://example.com/api/auth");

      // First run: sign in.
      await _jar(store).saveFromResponse(uri, [
        _cookie(
          "session",
          "abc",
          secure: true,
          expires: DateTime.now().add(const Duration(days: 7)),
        ),
      ]);

      // Cold start: brand-new jar and in-memory storage, same durable store.
      final loaded = await _jar(store).loadForRequest(uri);

      expect(loaded.map((c) => c.name), contains("session"));
      expect(loaded.firstWhere((c) => c.name == "session").value, "abc");
    });

    test(
      "mirrors a Secure cookie even when saved via a plain-HTTP URI",
      () async {
        // Guards against mirroring `super.loadForRequest(uri)`, whose output is
        // already scoped and would drop the Secure cookie over http://.
        final store = FakeStorage();
        final uri = Uri.parse("http://localhost/api/auth");

        await _jar(store).saveFromResponse(uri, [
          Cookie("session", "abc")
            ..domain = "localhost"
            ..path = "/"
            ..secure = true,
        ]);

        expect(
          store.data["localhost"]?.map((c) => c.name),
          contains("session"),
        );
      },
    );

    test("hydrates from the store once per host", () async {
      final store = FakeStorage();
      final uri = Uri.parse("https://example.com/api/auth");
      store.data["example.com"] = [_cookie("session", "abc")];

      final jar = _jar(store);
      await jar.loadForRequest(uri);
      final afterFirst = store.loadCallCount;
      await jar.loadForRequest(uri);
      await jar.loadForRequest(uri);

      expect(afterFirst, 1);
      expect(store.loadCallCount, 1, reason: "should not re-read per request");
    });

    test("merges new cookies with previously persisted ones", () async {
      final store = FakeStorage();
      final uri = Uri.parse("https://example.com/api/auth");
      store.data["example.com"] = [_cookie("existing", "1")];

      await _jar(store).saveFromResponse(uri, [_cookie("added", "2")]);

      expect(
        store.data["example.com"]?.map((c) => c.name),
        containsAll(["existing", "added"]),
      );
    });

    // Without this, the hydration fix resurrects a revoked session on the next
    // launch — "sign-out doesn't stick".
    test("deleteAll clears the durable store, so sign-out sticks", () async {
      final store = FakeStorage();
      final uri = Uri.parse("https://example.com/api/auth");

      final jar = _jar(store);
      await jar.saveFromResponse(uri, [_cookie("session", "abc")]);
      await jar.deleteAll();

      expect(store.data, isEmpty);
      expect(await _jar(store).loadForRequest(uri), isEmpty);
    });

    test("delete clears the durable store for that host", () async {
      final store = FakeStorage();
      final uri = Uri.parse("https://example.com/api/auth");

      final jar = _jar(store);
      await jar.saveFromResponse(uri, [_cookie("session", "abc")]);
      await jar.delete(uri);

      expect(store.data["example.com"] ?? const [], isEmpty);
    });

    test("works with a null store within a single run", () async {
      // Previously returned [] unconditionally when store was null, so sessions
      // did not work at all in that configuration.
      final jar = _jar(null);
      final uri = Uri.parse("https://example.com/api/auth");

      await jar.saveFromResponse(uri, [_cookie("session", "abc")]);

      expect(
        (await jar.loadForRequest(uri)).map((c) => c.name),
        contains("session"),
      );
    });
  });
}

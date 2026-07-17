import "dart:convert";
import "dart:io";

import "package:better_auth_flutter/src/core/storage/cookie_codec.dart";
import "package:flutter_test/flutter_test.dart";

Cookie _sessionCookie() => Cookie("better-auth.session_token", "abc123")
  ..domain = "example.com"
  ..path = "/"
  ..httpOnly = true
  ..secure = true
  ..sameSite = SameSite.lax
  ..expires = DateTime.fromMillisecondsSinceEpoch(1893456000000);

void main() {
  group("CookieCodec", () {
    // Regression: HiveStorage wrote `expires` as a DateTime but read it via
    // DateTime.fromMillisecondsSinceEpoch (which needs an int). Every Better
    // Auth session cookie has an Expires attribute, so this threw on every
    // cold start and silently signed users out.
    test("round-trips a session cookie with expires intact", () {
      final decoded = CookieCodec.decodeList(
        CookieCodec.encodeList([_sessionCookie()]),
      );

      expect(decoded, hasLength(1));
      final c = decoded.single;
      expect(c.name, "better-auth.session_token");
      expect(c.value, "abc123");
      expect(c.expires, DateTime.fromMillisecondsSinceEpoch(1893456000000));
      expect(c.domain, "example.com");
      expect(c.path, "/");
      expect(c.httpOnly, isTrue);
      expect(c.secure, isTrue);
      expect(c.sameSite, SameSite.lax);
    });

    test("round-trips every SameSite value", () {
      for (final value in SameSite.values) {
        final cookie = Cookie("n", "v")..sameSite = value;
        final decoded = CookieCodec.decodeList(
          CookieCodec.encodeList([cookie]),
        );
        expect(decoded.single.sameSite, value, reason: "for $value");
      }
    });

    test("round-trips a cookie with no expires", () {
      final decoded = CookieCodec.decodeList(
        CookieCodec.encodeList([Cookie("n", "v")]),
      );

      expect(decoded.single.expires, isNull);
    });

    test("encodes expires as an int, not a DateTime", () {
      final encoded = CookieCodec.encode(_sessionCookie());

      expect(encoded["expires"], isA<int>());
      expect(encoded["sameSite"], isA<String>());
    });

    test("returns empty for null or empty input", () {
      expect(CookieCodec.decodeList(null), isEmpty);
      expect(CookieCodec.decodeList(""), isEmpty);
    });

    // A store written by a version with the expires bug must cost a sign-in,
    // not a crash loop on launch.
    test("returns empty for malformed JSON rather than throwing", () {
      expect(CookieCodec.decodeList("{not json"), isEmpty);
    });

    test("returns empty when the payload is not a list", () {
      expect(CookieCodec.decodeList(jsonEncode({"a": 1})), isEmpty);
    });

    test("skips malformed rows but keeps valid ones", () {
      final raw = jsonEncode([
        {"name": "good", "value": "1"},
        {"value": "no name"},
        "not even a map",
        {"name": "also-good", "value": "2"},
      ]);

      final decoded = CookieCodec.decodeList(raw);

      expect(decoded.map((c) => c.name), ["good", "also-good"]);
    });

    test("tolerates a legacy ISO-8601 string expires", () {
      final raw = jsonEncode([
        {"name": "n", "value": "v", "expires": "2030-01-01T00:00:00.000Z"},
      ]);

      expect(CookieCodec.decodeList(raw).single.expires, isNotNull);
    });

    test("drops an unreadable legacy expires instead of throwing", () {
      final raw = jsonEncode([
        {"name": "n", "value": "v", "expires": "not-a-date"},
      ]);

      final decoded = CookieCodec.decodeList(raw);

      expect(decoded, hasLength(1));
      expect(decoded.single.expires, isNull);
    });
  });
}

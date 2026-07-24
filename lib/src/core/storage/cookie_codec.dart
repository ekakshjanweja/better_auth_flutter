import "dart:convert";
import "dart:io";

import "package:better_auth_flutter/src/core/utils/logger.dart";

/// Serializes [Cookie]s to and from JSON for the persistent storage backends.
///
/// Every backend must share this codec. Cookies contain values that are not
/// JSON primitives — `expires` is a [DateTime] and `sameSite` is an enum — and
/// writing them raw produces a store that cannot be read back. That bug shipped:
/// `HiveStorage` wrote `expires` as a [DateTime] and read it through
/// [DateTime.fromMillisecondsSinceEpoch], which throws. Since every Better Auth
/// session cookie carries an `Expires` attribute, it threw on every cold start
/// and silently signed users out.
///
/// Decoding is deliberately tolerant: a store written by an older version may
/// hold rows in the broken shape, and the correct response is to drop them and
/// re-authenticate rather than crash on launch.
abstract final class CookieCodec {
  /// Encodes a single cookie into a JSON-safe map.
  static Map<String, dynamic> encode(Cookie c) => {
    "name": c.name,
    "value": c.value,
    "domain": c.domain,
    "path": c.path,
    "expires": c.expires?.millisecondsSinceEpoch,
    "httpOnly": c.httpOnly,
    "secure": c.secure,
    "sameSite": c.sameSite?.name,
    "maxAge": c.maxAge,
  };

  /// Decodes a single cookie. Throws if [map] is not a usable cookie row;
  /// callers should prefer [decodeList], which filters failures.
  static Cookie decode(Map<String, dynamic> map) {
    final cookie = Cookie(map["name"] as String, map["value"] as String)
      ..expires = _parseExpires(map["expires"])
      ..path = map["path"] as String?
      ..domain = map["domain"] as String?
      ..httpOnly = map["httpOnly"] as bool? ?? false
      ..secure = map["secure"] as bool? ?? false
      ..sameSite = _parseSameSite(map["sameSite"]);

    final maxAge = map["maxAge"];
    if (maxAge is num) cookie.maxAge = maxAge.toInt();

    return cookie;
  }

  /// Encodes [cookies] to a JSON string suitable for any string-keyed store.
  static String encodeList(List<Cookie> cookies) =>
      jsonEncode(cookies.map(encode).toList());

  /// Decodes a JSON string produced by [encodeList].
  ///
  /// Returns an empty list rather than throwing when the payload is missing or
  /// unreadable — a corrupt store should cost the user a fresh sign-in, not a
  /// crash loop on startup.
  static List<Cookie> decodeList(String? raw) {
    if (raw == null || raw.isEmpty) return const [];
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! List) return const [];
      return decodeMaps(decoded);
    } catch (_) {
      BetterAuthLog.warning(
        "Discarding unreadable cookie store; user will need to sign in again.",
      );
      return const [];
    }
  }

  /// Decodes an already-parsed list of cookie rows, skipping any that are
  /// malformed (for example rows written by a version with the `expires` bug).
  static List<Cookie> decodeMaps(List<dynamic> rows) {
    final cookies = <Cookie>[];
    for (final row in rows) {
      if (row is! Map) continue;
      try {
        cookies.add(decode(row.cast<String, dynamic>()));
      } catch (_) {
        // Skip this cookie rather than failing the whole jar.
        BetterAuthLog.warning("Skipping malformed persisted cookie row.");
      }
    }
    return cookies;
  }

  /// Accepts an int (the current format). Anything else — notably a serialized
  /// [DateTime] from the pre-fix Hive backend — is treated as absent.
  static DateTime? _parseExpires(Object? raw) {
    if (raw is num) return DateTime.fromMillisecondsSinceEpoch(raw.toInt());
    if (raw is String) {
      final asInt = int.tryParse(raw);
      if (asInt != null) return DateTime.fromMillisecondsSinceEpoch(asInt);
      return DateTime.tryParse(raw);
    }
    if (raw is DateTime) return raw;
    return null;
  }

  static SameSite? _parseSameSite(Object? raw) {
    if (raw is SameSite) return raw;
    if (raw is! String) return null;
    for (final v in SameSite.values) {
      if (v.name == raw) return v;
    }
    // Pre-fix backends wrote `SameSite.lax` via toString().
    for (final v in SameSite.values) {
      if (v.toString() == raw) return v;
    }
    return null;
  }
}

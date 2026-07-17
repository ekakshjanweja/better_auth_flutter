import "package:better_auth_flutter/src/core/storage/storage.dart";
import "package:cookie_jar/cookie_jar.dart";

/// A [PersistCookieJar] that mirrors cookies into a durable [StorageInterface]
/// so sessions survive an app restart.
///
/// The division of responsibility matters: `super` is always the source of
/// truth for cookie *semantics* — path matching, the `secure` flag, and expiry
/// — while [store] is only a durable mirror. An earlier version returned
/// `store.loadCookies(uri.host)` directly from [loadForRequest] without calling
/// `super`, which bypassed all of that scoping: `Secure` cookies were sent over
/// plaintext HTTP, expired cookies were sent forever, and cookies were matched
/// on host alone. It also meant a null [store] returned no cookies at all, so
/// sessions did not work even within a single run.
class CustomPersistCookieJar extends PersistCookieJar {
  CustomPersistCookieJar({required this.store, required super.storage});

  /// Durable mirror. When null, cookies live only for the current process.
  final StorageInterface? store;

  /// Hosts already replayed from [store] into the jar this run.
  final Set<String> _hydratedHosts = <String>{};

  @override
  Future<void> saveFromResponse(Uri uri, List<Cookie> cookies) async {
    // super first: it owns the authoritative jar state.
    await super.saveFromResponse(uri, cookies);
    if (cookies.isEmpty) return;
    await _mirror(uri, cookies);
  }

  @override
  Future<List<Cookie>> loadForRequest(Uri uri) async {
    await _hydrate(uri);
    // super applies domain and path scoping.
    final cookies = await super.loadForRequest(uri);
    return cookies.where((c) => _isSendable(c, uri)).toList();
  }

  /// Enforces the `secure` and expiry rules that `cookie_jar` does not.
  ///
  /// cookie_jar 4.0.9 filters with:
  ///
  /// ```dart
  /// return cookie.cookie.secure && scheme == 'https' || !_isExpired(cookie);
  /// ```
  ///
  /// which parses as `(secure && https) || !expired`. A non-expired `Secure`
  /// cookie over plain HTTP yields `false || true` — sent anyway — and an
  /// expired `Secure` cookie over HTTPS yields `true || false` — also sent.
  /// Neither rule actually holds upstream, so we apply both here rather than
  /// leak a session cookie onto an unencrypted connection.
  static bool _isSendable(Cookie cookie, Uri uri) {
    if (cookie.secure && uri.scheme != "https") return false;
    final expires = cookie.expires;
    if (expires != null && expires.isBefore(DateTime.now())) return false;
    return true;
  }

  @override
  Future<void> delete(Uri uri, [bool withDomainSharedCookie = false]) async {
    await super.delete(uri, withDomainSharedCookie);
    await store?.deleteCookies(uri.host);
    _hydratedHosts.remove(uri.host);
  }

  @override
  Future<void> deleteAll() async {
    await super.deleteAll();
    await store?.deleteAll();
    _hydratedHosts.clear();
  }

  /// Replays durable cookies for [uri]'s host into the jar, once per host per
  /// run, so `super` can scope them like any other cookie.
  Future<void> _hydrate(Uri uri) async {
    final store = this.store;
    if (store == null) return;
    if (!_hydratedHosts.add(uri.host)) return;

    final persisted = await store.loadCookies(uri.host);
    if (persisted.isEmpty) return;

    // Bypass this class's override: these cookies came *from* the store, so
    // mirroring them straight back would be redundant work.
    await super.saveFromResponse(uri, persisted);
  }

  /// Merges [incoming] into the durable copy for [uri]'s host.
  ///
  /// Deliberately does not mirror `super.loadForRequest(uri)`: that output is
  /// already scoped, so it would silently drop a `Secure` cookie whenever [uri]
  /// is plain HTTP, and drop cookies scoped to other paths.
  Future<void> _mirror(Uri uri, List<Cookie> incoming) async {
    final store = this.store;
    if (store == null) return;

    // Hydrate first, so a fresh run merges into the persisted set instead of
    // replacing it with just this response's cookies.
    await _hydrate(uri);

    final merged = <String, Cookie>{
      for (final c in await store.loadCookies(uri.host)) _key(c): c,
    };
    for (final c in incoming) {
      merged[_key(c)] = c;
    }
    await store.saveCookies(uri.host, merged.values.toList());
  }

  /// Cookies are identified by name *and* scope — same name at a different
  /// path or domain is a different cookie.
  static String _key(Cookie c) => "${c.name}|${c.domain ?? ''}|${c.path ?? ''}";
}

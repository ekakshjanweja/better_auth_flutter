import "dart:io";

/// Durable backing store for Better Auth session cookies.
///
/// Implementations persist cookies across app launches. The in-memory cookie
/// jar remains the source of truth for scoping (path, `secure`, expiry) during
/// a run; this interface only mirrors cookies so a session survives a restart.
///
/// Ship-provided implementations: `HiveStorage`, `SharedPreferencesStorage`.
/// Implement this yourself to use a different backend.
abstract class StorageInterface {
  /// Persists [cookies] for [url] (keyed by host), replacing any existing entry.
  Future<void> saveCookies(String url, List<Cookie> cookies);

  /// Loads previously persisted cookies for [url]. Returns an empty list when
  /// nothing is stored, and must not throw on a corrupt entry.
  Future<List<Cookie>> loadCookies(String url);

  /// Removes the persisted cookies for [url].
  ///
  /// Sign-out must reach the durable store, not just the in-memory jar —
  /// otherwise the next launch rehydrates the revoked session cookie.
  Future<void> deleteCookies(String url);

  /// Removes every persisted cookie in this store.
  Future<void> deleteAll();
}

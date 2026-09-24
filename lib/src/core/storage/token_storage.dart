/// Persistence for the bearer auth token.
///
/// Borrowed in shape from `package:fresh`'s `TokenStorage`, but without a
/// refresh model: Better Auth's bearer token is a session token, not an
/// access/refresh pair, so there is nothing to refresh.
///
/// Native bearer mode defaults to `SecureTokenStorage` (keychain/keystore).
/// Pass [InMemoryTokenStorage] to keep the token in process memory only.
abstract class TokenStorage<T> {
  /// The stored token, or null if none.
  Future<T?> read();

  /// Persists [token], replacing any existing value.
  Future<void> write(T token);

  /// Removes the stored token.
  Future<void> delete();
}

/// A [TokenStorage] that keeps the token in memory only.
///
/// The token is lost when the process ends. Use this when you do not want a
/// bearer session to survive an app restart; native bearer mode otherwise
/// defaults to `SecureTokenStorage`.
class InMemoryTokenStorage<T> implements TokenStorage<T> {
  T? _token;

  @override
  Future<T?> read() async => _token;

  @override
  Future<void> write(T token) async => _token = token;

  @override
  Future<void> delete() async => _token = null;
}

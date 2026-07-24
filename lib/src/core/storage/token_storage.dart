/// Persistence for the bearer auth token.
///
/// Borrowed in shape from `package:fresh`'s `TokenStorage`, but without a
/// refresh model: Better Auth's bearer token is a session token, not an
/// access/refresh pair, so there is nothing to refresh.
///
/// The default is [InMemoryTokenStorage], which does **not** survive an app
/// restart. For a persistent bearer session, supply an implementation backed by
/// secure storage — see the README.
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
/// The token is lost when the process ends, so bearer sessions do not survive
/// an app restart with this default. That is a deliberate safe default — the
/// token is a credential, and writing it to disk should be an explicit choice.
class InMemoryTokenStorage<T> implements TokenStorage<T> {
  T? _token;

  @override
  Future<T?> read() async => _token;

  @override
  Future<void> write(T token) async => _token = token;

  @override
  Future<void> delete() async => _token = null;
}

/// How the client authenticates its requests.
enum AuthMode {
  /// Session cookies, persisted via the configured `StorageInterface`. The
  /// default, and what Better Auth uses out of the box.
  cookie,

  /// A bearer token captured from the `set-auth-token` response header and sent
  /// as `Authorization: Bearer <token>`. Requires the `bearer()` plugin on the
  /// server. Use for backends that cannot rely on cookies.
  bearer,
}

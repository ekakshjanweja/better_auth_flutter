import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";

/// Bearer-mode helpers on the client.
///
/// Only meaningful when the SDK was initialized with
/// `BetterAuthFlutter.initialize(mode: AuthMode.bearer)`. In cookie mode there
/// is no bearer token and these return null / do nothing.
extension BetterAuthBearerExtension on BetterAuthClient {
  /// The current bearer token, or null when signed out or in cookie mode.
  Future<String?> get bearerToken => BetterAuthFlutter.readBearerToken();

  /// Clears the stored bearer token locally, without calling the server.
  ///
  /// Prefer `signOut()` for a normal sign-out; use this to drop a token that is
  /// already known to be invalid.
  Future<void> clearBearerToken() => BetterAuthFlutter.clearBearerToken();
}

/// JWT plugin: mint a short-lived JWT for your own backend, and fetch the JWKS
/// used to verify it.
///
/// Requires the `jwt()` plugin on your Better Auth server. Importing this
/// library adds a `jwt` getter to [BetterAuthClient].
library;

export "../src/plugins/jwt/jwt_plugin.dart";

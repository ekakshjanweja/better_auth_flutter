/// Anonymous authentication: create a guest session with no credentials.
///
/// Requires the `anonymous()` plugin on your Better Auth server. Importing this
/// library adds an `anonymous` getter to [BetterAuthClient].
library;

export "../src/plugins/anonymous/anonymous_plugin.dart";

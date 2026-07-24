/// One-time tokens: hand a session from one context to another.
///
/// Requires the `oneTimeToken()` plugin on your Better Auth server. Importing
/// this library adds a `oneTimeToken` getter to [BetterAuthClient].
library;

export "../src/plugins/one_time_token/one_time_token_plugin.dart";

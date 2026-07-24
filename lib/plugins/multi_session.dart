/// Multi-session: several accounts signed in on one device.
///
/// Requires the `multiSession()` plugin on your Better Auth server. Importing
/// this library adds a `multiSession` getter to [BetterAuthClient]. Cookie mode
/// only.
library;

export "../src/plugins/multi_session/multi_session_plugin.dart";

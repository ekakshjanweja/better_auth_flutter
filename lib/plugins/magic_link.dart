/// Magic-link authentication: passwordless sign-in via an emailed link.
///
/// Requires the `magicLink()` plugin on your Better Auth server. Importing this
/// library adds a `magicLink` getter to [BetterAuthClient].
library;

export "../src/plugins/magic_link/magic_link_plugin.dart";

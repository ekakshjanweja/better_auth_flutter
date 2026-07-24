/// Two-factor authentication: TOTP, OTP, and backup codes.
///
/// Requires the `twoFactor()` plugin on your Better Auth server. Importing this
/// library adds a `twoFactor` getter to [BetterAuthClient].
library;

export "../src/plugins/two_factor/two_factor_plugin.dart";

/// Email OTP plugin: passwordless sign-in via a one-time code sent by email.
///
/// Requires the `emailOTP()` plugin on your Better Auth server. Importing this
/// library adds an `emailOtp` getter to [BetterAuthClient].
library;

export "../src/plugins/email_otp/email_otp_plugin.dart";

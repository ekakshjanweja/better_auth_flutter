import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/plugins/email_otp/better_auth_email_otp.dart";

/// Caches one instance per client; see [BetterAuthEmailOtp].
final Expando<BetterAuthEmailOtp> _cache = Expando<BetterAuthEmailOtp>(
  "BetterAuthEmailOtp",
);

extension EmailOtpExtension on BetterAuthClient {
  BetterAuthEmailOtp get emailOtp => _cache[this] ??= BetterAuthEmailOtp(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

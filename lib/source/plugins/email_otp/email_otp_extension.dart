import "package:better_auth_flutter/source/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/source/core/better_auth_flutter.dart";
import "package:better_auth_flutter/source/plugins/email_otp/better_auth_email_otp.dart";

extension EmailOtpExtension on BetterAuthClient {
  BetterAuthEmailOtp get emailOtp => BetterAuthEmailOtp(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

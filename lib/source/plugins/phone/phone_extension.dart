import "package:better_auth_flutter/source/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/source/core/better_auth_flutter.dart";

import "better_auth_phone.dart";

extension PhoneBetterAuthExtension on BetterAuthClient {
  BetterAuthPhone get phone => BetterAuthPhone(
    BetterAuthFlutter.dioClient,
    baseUrl: BetterAuthFlutter.baseUrl,
  );
}

import "dart:async";

import "package:better_auth_flutter/src/core/api/data/models/api_failure.dart";
import "package:better_auth_flutter/src/core/api/data/models/user.dart";
import "package:better_auth_flutter/src/core/constants/app_constants.dart";
import "package:better_auth_flutter/src/modules/email_and_password.dart";
import "package:better_auth_flutter/src/modules/session_management.dart";

class BetterAuthClient {
  static final BetterAuthClient _instance = BetterAuthClient._internal();
  factory BetterAuthClient() => _instance;

  Timer? _autoRefreshSessionTicker;

  BetterAuthClient._internal() {
    startAutoRefreshSession();
  }

  Future<(Map<String, dynamic>?, Failure?)> Function({
    required String email,
    required String password,
    required String name,
  })
  signUpWithEmailAndPassword = EmailAndPassword.signUpWithEmailAndPassword;

  Future<(User?, Failure?)> Function({
    required String email,
    required String password,
  })
  signInWithEmailAndPassword = EmailAndPassword.signInWithEmailAndPassword;

  Future<Failure?> Function() signOut = EmailAndPassword.signOut;

  void startAutoRefreshSession() async {
    stopAutoRefreshSession();

    _autoRefreshSessionTicker = Timer.periodic(
      AppConstants.autoRefreshSessionInterval,
      (Timer t) => SessionManagement.autoRefreshTokenTick(),
    );
  }

  void stopAutoRefreshSession() {
    _autoRefreshSessionTicker?.cancel();
  }
}

import "dart:async";
import "dart:developer";
import "package:better_auth_flutter/src/core/api/data/models/account.dart";
import "package:better_auth_flutter/src/core/api/data/models/api_failure.dart";
import "package:better_auth_flutter/src/core/api/data/models/session.dart";
import "package:better_auth_flutter/src/core/api/data/models/user.dart";
import "package:better_auth_flutter/src/core/enums/social_providers.dart";
import "package:better_auth_flutter/src/core/local_storage/kv_store.dart";
import "package:better_auth_flutter/src/core/local_storage/kv_store_keys.dart";
import "package:better_auth_flutter/src/modules/accounts.dart";
import "package:better_auth_flutter/src/modules/auth.dart";
import "package:better_auth_flutter/src/modules/session_management.dart";
import "package:better_auth_flutter/src/modules/verification.dart";

class BetterAuthClient {
  BetterAuthClient() {
    final userCache = KVStore.get<String>(KVStoreKeys.user);
    if (userCache == null) {
      log("No user cache found", name: "BetterAuthClient");
      return;
    }

    user = User.fromJson(userCache);

    final sessionCache = KVStore.get<String>(KVStoreKeys.session);

    if (sessionCache == null) {
      log("No session cache found", name: "BetterAuthClient");
      return;
    }

    session = Session.fromJson(sessionCache);
  }

  Session? _session;
  Session? get session => _session;
  set session(Session? value) {
    _session = value;
    if (value != null) {
      SessionManagement.refreshSession(value);
    }
  }

  User? _user;
  User? get user => _user;
  set user(User? value) {
    _user = value;
    if (value != null) {
      KVStore.set(KVStoreKeys.user, value.toJson());
    }
  }

  Future<(Map<String, dynamic>?, BetterAuthFailure?)> Function({
    required String email,
    required String password,
    required String name,
  })
  signUpWithEmailAndPassword = Auth.signUpWithEmailAndPassword;

  Future<(User?, BetterAuthFailure?)> Function({
    required String email,
    required String password,
  })
  signInWithEmailAndPassword = Auth.signInWithEmailAndPassword;

  Future<(User?, BetterAuthFailure?)> Function() signInAnonymous =
      Auth.signInAnonymous;

  Future<(User?, BetterAuthFailure?)> Function({
    required String email,
    required String otp,
  })
  signInEmailOtp = Auth.signInEmailOtp;

  Future<BetterAuthFailure?> Function() signOut = Auth.signOut;

  Future<(User?, BetterAuthFailure?)> Function({
    required SocialProvider provider,
    required String idToken,
    required String accessToken,
  })
  signInWithIdToken = Auth.signInWithIdToken;

  Future<(String?, BetterAuthFailure?)> Function({
    required SocialProvider provider,
    String? callbackUrl,
    String? newUserCallbackUrl,
    String? errorCallbackURL,
    bool? disableRedirect,
    List<String>? scopes,
    String? requestSignUp,
    String? loginHint,
    required String callbackUrlScheme,
  })
  socialSignIn = Auth.socialSignIn;

  Future<((Session?, User?)?, BetterAuthFailure?)> Function() getSession =
      SessionManagement.getSession;

  Future<BetterAuthFailure?> Function({required String email})
  sendVerificationEmail = Verification.sendVerificationEmail;

  Future<BetterAuthFailure?> Function({required String verificationToken})
  verifyEmail = Verification.verifyEmail;

  Future<BetterAuthFailure?> Function({required String email})
  sendVerificationOtp = Verification.sendVerificationOtp;

  Future<(List<Account>?, BetterAuthFailure?)> Function() listAccounts =
      Accounts.listAccounts;

  Future<(String?, BetterAuthFailure?)> Function({
    String? token,
    String? password,
  })
  deleteUser = Auth.deleteUser;
}

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
  BetterAuthClient();

  Session? _session;
  Session? get session => _session;
  set session(Session? value) {
    _session = value;
    if (value != null) {
      // Store session in local storage
      KVStore.set(KVStoreKeys.session, value.toJson());
      // Start proactive session refresh management
      SessionManagement.refreshSession(value);
    } else {
      // Clear session from local storage
      KVStore.remove(KVStoreKeys.session);
    }
  }

  User? _user;
  User? get user => _user;
  set user(User? value) {
    _user = value;
    if (value != null) {
      KVStore.set(KVStoreKeys.user, value.toJson());
    } else {
      KVStore.remove(KVStoreKeys.user);
    }
  }

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  /// Initialize the client by loading cached user and session data
  Future<void> init() async {
    if (_isInitialized) return;

    try {
      // Load user from cache
      final userCache = KVStore.get<String>(KVStoreKeys.user);
      if (userCache != null) {
        try {
          _user = User.fromJson(userCache);
          log(
            "User loaded from cache: ${_user?.email}",
            name: "BetterAuthClient",
          );
        } catch (e) {
          log("Failed to parse cached user data: $e", name: "BetterAuthClient");
          // Clear invalid cached data
          await KVStore.remove(KVStoreKeys.user);
        }
      } else {
        log("No user cache found", name: "BetterAuthClient");
      }

      // Load session from cache
      final sessionCache = KVStore.get<String>(KVStoreKeys.session);
      if (sessionCache != null) {
        try {
          _session = Session.fromJson(sessionCache);
          log(
            "Session loaded from cache: ${_session?.id}",
            name: "BetterAuthClient",
          );

          // Check if session is still valid and start refresh management if needed
          if (_session != null) {
            if (_session!.expiresAt.isAfter(DateTime.now())) {
              SessionManagement.refreshSession(_session!);
            } else {
              log("Cached session expired, clearing", name: "BetterAuthClient");
              _session = null;
              await KVStore.remove(KVStoreKeys.session);
            }
          }
        } catch (e) {
          log(
            "Failed to parse cached session data: $e",
            name: "BetterAuthClient",
          );
          // Clear invalid cached data
          await KVStore.remove(KVStoreKeys.session);
        }
      } else {
        log("No session cache found", name: "BetterAuthClient");
      }

      log("Client initialization completed", name: "BetterAuthClient");
    } catch (e) {
      log("Error initializing client: $e", name: "BetterAuthClient");
    }

    _isInitialized = true;
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

  Future<(List<Account>?, BetterAuthFailure?)> Function() listAccounts =
      Accounts.listAccounts;

  Future<(String?, BetterAuthFailure?)> Function({
    String? token,
    String? password,
  })
  deleteUser = Auth.deleteUser;
}

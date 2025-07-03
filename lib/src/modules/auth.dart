import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/local_storage/kv_store.dart";
import "package:better_auth_flutter/src/core/local_storage/kv_store_keys.dart";

class Auth {
  static Future<(Map<String, dynamic>?, BetterAuthFailure?)>
  signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.signUpWithEmailAndPassword,
        method: MethodType.post,
        body: {"email": email, "password": password, "name": name},
      );

      if (error != null) return (null, error);

      final responseData = result as Map<String, dynamic>;

      // Extract and store user data if present
      if (responseData.containsKey("user")) {
        final user = User.fromMap(responseData["user"] as Map<String, dynamic>);
        await KVStore.set(KVStoreKeys.user, user.toJson());
        // Update client state
        BetterAuth.instance.client.user = user;
      }

      // Extract and store session data if present
      if (responseData.containsKey("session")) {
        final session = Session.fromMap(
          responseData["session"] as Map<String, dynamic>,
        );
        await KVStore.set(KVStoreKeys.session, session.toJson());
        // Update client state
        BetterAuth.instance.client.session = session;
      }

      // Get the full session after signup if user was auto-signed in
      if (responseData.containsKey("user") ||
          responseData.containsKey("session")) {
        await Future.delayed(const Duration(milliseconds: 500));
        await SessionManagement.getSession();
      }

      return (responseData, null);
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }

  static Future<(User?, BetterAuthFailure?)> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.signInWithEmailAndPassword,
        method: MethodType.post,
        body: {"email": email, "password": password},
      );

      if (error != null) return (null, error);

      if (result is! Map<String, dynamic>) {
        return (null, BetterAuthFailure(code: BetterAuthError.unKnownError));
      }

      final user = User.fromMap(result["user"] as Map<String, dynamic>);

      // Extract and store session data if present
      if (result.containsKey("session")) {
        final session = Session.fromMap(
          result["session"] as Map<String, dynamic>,
        );
        await KVStore.set(KVStoreKeys.session, session.toJson());
        // Update client state immediately
        BetterAuth.instance.client.session = session;
      }

      // Store user data and update client state
      await KVStore.set(KVStoreKeys.user, user.toJson());
      BetterAuth.instance.client.user = user;

      // Get the full session after login to ensure consistency
      await Future.delayed(const Duration(milliseconds: 500));
      await SessionManagement.getSession();

      return (user, null);
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }

  static Future<(User?, BetterAuthFailure?)> signInWithIdToken({
    required SocialProvider provider,
    required String idToken,
    required String accessToken,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.socialSignIn,
        method: MethodType.post,
        body: {
          "provider": provider.id,
          "idToken": {"token": idToken, "accessToken": accessToken},
          "disableRedirect": true,
        },
      );

      if (error != null) return (null, error);

      if (result is! Map<String, dynamic>) {
        return (null, BetterAuthFailure(code: BetterAuthError.invalidResponse));
      }

      final user = User.fromMap(result["user"] as Map<String, dynamic>);

      // Extract and store session data if present
      if (result.containsKey("session")) {
        final session = Session.fromMap(
          result["session"] as Map<String, dynamic>,
        );
        await KVStore.set(KVStoreKeys.session, session.toJson());
        // Update client state
        BetterAuth.instance.client.session = session;
      }

      await KVStore.set(KVStoreKeys.user, user.toJson());
      // Update client state
      BetterAuth.instance.client.user = user;

      await Future.delayed(const Duration(milliseconds: 500));
      await SessionManagement.getSession();

      return (user, null);
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }

  static Future<(String?, BetterAuthFailure?)> socialSignIn({
    required SocialProvider provider,
    String? callbackUrl,
    String? newUserCallbackUrl,
    String? errorCallbackURL,
    bool? disableRedirect,
    List<String>? scopes,
    String? requestSignUp,
    String? loginHint,
    required String callbackUrlScheme,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.socialSignIn,
        method: MethodType.post,
        body: {
          "provider": provider.id,
          if (callbackUrl != null) "callbackURL": callbackUrl,
          if (newUserCallbackUrl != null)
            "newUserCallbackURL": newUserCallbackUrl,
          if (errorCallbackURL != null) "errorCallbackURL": errorCallbackURL,
          if (disableRedirect != null) "disableRedirect": disableRedirect,
          if (scopes != null) "scopes": scopes,
          if (requestSignUp != null) "requestSignUp": requestSignUp,
          if (loginHint != null) "loginHint": loginHint,
        },
      );

      if (error != null) return (null, error);

      final url = result["url"] as String?;

      if (url == null) {
        return (null, BetterAuthFailure(code: BetterAuthError.invalidResponse));
      }

      // Return the URL for external OAuth flow handling
      // The calling code should use flutter_web_auth_2 or similar to handle the OAuth flow
      return (url, null);
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }

  static Future<BetterAuthFailure?> signOut() async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.signOut,
        method: MethodType.post,
      );

      if (error != null) return error;

      if (result is! Map<String, dynamic>) {
        return BetterAuthFailure(code: BetterAuthError.failedToSignOut);
      }

      if (result["success"] == false) {
        return BetterAuthFailure(code: BetterAuthError.failedToSignOut);
      }

      // Clear local storage and client state
      await KVStore.clear();
      BetterAuth.instance.client.user = null;
      BetterAuth.instance.client.session = null;

      return null;
    } catch (e) {
      return BetterAuthFailure(
        code: BetterAuthError.failedToSignOut,
        message: e.toString(),
      );
    }
  }

  static Future<(String?, BetterAuthFailure?)> deleteUser({
    String? token,
    String? password,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.deleteUser,
        method: MethodType.post,
        body: {
          if (token != null) "token": token,
          if (password != null) "password": password,
        },
      );

      if (error != null) return (null, error);

      final success = result["success"] as bool?;

      if (success == false) {
        return (
          null,
          BetterAuthFailure(code: BetterAuthError.failedToDeleteUser),
        );
      }

      final message = result["message"] as String?;

      return (message, null);
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }
}

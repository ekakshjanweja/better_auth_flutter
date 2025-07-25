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

      return (result as Map<String, dynamic>, null);
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

  static Future<(User?, BetterAuthFailure?)> signInAnonymous() async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.signInAnonymous,
        method: MethodType.post,
      );

      if (error != null) return (null, error);

      if (result is! Map<String, dynamic>) {
        return (null, BetterAuthFailure(code: BetterAuthError.unKnownError));
      }

      final user = User.fromMap(result["user"] as Map<String, dynamic>);
      await KVStore.set(KVStoreKeys.user, user.toJson());

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

  static Future<(User?, BetterAuthFailure?)> signInEmailOtp({
    required String email,
    required String otp,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.signInEmailOtp,
        method: MethodType.post,
        body: {"email": email, "otp": otp},
      );

      if (error != null) return (null, error);

      if (result is! Map<String, dynamic>) {
        return (null, BetterAuthFailure(code: BetterAuthError.unKnownError));
      }

      final user = User.fromMap(result["user"] as Map<String, dynamic>);

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

      await KVStore.set(KVStoreKeys.user, user.toJson());

      await Future.delayed(const Duration(milliseconds: 1000));

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

      //TODO: Implement this

      // final res = await FlutterWebAuth2.authenticate(
      //   url: result!.toString(),
      //   callbackUrlScheme: "$callbackUrlScheme:/",
      //   options: FlutterWebAuth2Options(),
      // );

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

      await KVStore.clear();

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

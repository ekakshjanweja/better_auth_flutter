import "package:better_auth_flutter/src/core/api/api.dart";
import "package:better_auth_flutter/src/core/api/data/enums/error_type.dart";
import "package:better_auth_flutter/src/core/api/data/enums/method_type.dart";
import "package:better_auth_flutter/src/core/api/data/models/api_failure.dart";
import "package:better_auth_flutter/src/core/constants/app_endpoints.dart";

class Verification {
  static Future<BetterAuthFailure?> sendVerificationEmail({
    required String email,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.sendVerificationEmail,
        method: MethodType.post,
        body: {"email": email},
      );

      if (error != null) return error;

      final status = result["status"] as bool;

      if (!status) {
        return BetterAuthFailure(
          code: BetterAuthError.failedToSendVerificationEmail,
        );
      }

      return null;
    } catch (e) {
      return BetterAuthFailure(
        code: BetterAuthError.unKnownError,
        message: e.toString(),
      );
    }
  }

  static Future<BetterAuthFailure?> verifyEmail({
    required String verificationToken,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.verifyEmail,
        method: MethodType.get,
        queryParameters: {"token": verificationToken},
      );

      if (error != null) return error;

      final status = result["status"] as bool;

      if (!status) {
        return BetterAuthFailure(code: BetterAuthError.failedToVerifyEmail);
      }

      return null;
    } catch (e) {
      return BetterAuthFailure(
        code: BetterAuthError.unKnownError,
        message: e.toString(),
      );
    }
  }

  static Future<BetterAuthFailure?> sendVerificationOtp({
    required String email,
  }) async {
    try {
      final (result, error) = await Api.sendRequest(
        AppEndpoints.sendVerificationOtp,
        method: MethodType.post,
        body: {"email": email, "type": "sign-in"},
      );

      if (error != null) return error;

      final status = result["success"] as bool;

      if (!status) {
        return BetterAuthFailure(code: BetterAuthError.unKnownError);
      }

      return null;
    } catch (e) {
      return BetterAuthFailure(
        code: BetterAuthError.unKnownError,
        message: e.toString(),
      );
    }
  }
}

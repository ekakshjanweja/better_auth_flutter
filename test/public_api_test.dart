// Guards the package's front door.
//
// Every README and docs/ snippet opened with this import while no barrel file
// existed at all, so none of them compiled. These imports failing to resolve is
// the failure mode this file exists to catch — if it compiles, the public
// surface is reachable the way the docs claim.
import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/plugins/admin.dart";
import "package:better_auth_flutter/plugins/bearer.dart";
import "package:better_auth_flutter/plugins/email_otp.dart";
import "package:better_auth_flutter/plugins/jwt.dart";
import "package:better_auth_flutter/plugins/phone.dart";
import "package:better_auth_flutter/riverpod.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("public API", () {
    test("exposes the core surface through the barrel", () {
      expect(BetterAuthFlutter.initialize, isA<Function>());
      expect(const Result<int>.ok(1), isA<Success<int>>());
      expect(
        const Result<int>.err(BetterError(message: "m", stack: null)),
        isA<Failure<int>>(),
      );
    });

    test("exposes error codes and helpers", () {
      const error = BetterError(
        code: BetterErrorCodes.unauthorized,
        message: "nope",
        stack: null,
        statusCode: 401,
      );

      expect(error.isUnauthorized, isTrue);
      expect(error.isNetworkError, isFalse);
    });

    test("exposes storage contracts and shipped backends", () {
      expect(StorageInterface, isNotNull);
      expect(HiveStorage, isNotNull);
      expect(SharedPreferencesStorage, isNotNull);
    });

    test("exposes domain models and widgets", () {
      expect(User, isNotNull);
      expect(Session, isNotNull);
      expect(Account, isNotNull);
      expect(Verification, isNotNull);
      expect(BetterAuthProvider, isNotNull);
      expect(BetterAuthConsumer, isNotNull);
    });

    test("exposes the Riverpod 3 providers through their own library", () {
      // Referencing the providers is the assertion: it only compiles if
      // riverpod.dart exports them.
      expect(betterAuthStateProvider, isNotNull);
      expect(betterAuthClientProvider, isNotNull);
      expect(currentUserProvider, isNotNull);
      expect(isAuthenticatedProvider, isNotNull);
    });

    test("exposes each plugin through its own library", () {
      // Referencing the types is the assertion: it only compiles if each
      // plugin sub-barrel exports them.
      expect(BetterAuthAdmin, isNotNull);
      expect(BetterAuthJwt, isNotNull);
      expect(BetterAuthPhone, isNotNull);
      expect(BetterAuthEmailOtp, isNotNull);
      expect(BearerOptions, isNotNull);
    });
  });
}

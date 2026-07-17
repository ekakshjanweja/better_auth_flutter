// Compile-checks that each plugin library exposes its typed surface. These are
// import-and-reference assertions: they only compile if the sub-barrels export
// the expected types and the client extension getters exist.
import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/plugins/anonymous.dart";
import "package:better_auth_flutter/plugins/two_factor.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("two_factor plugin", () {
    test("exposes typed request and response models", () {
      const enable = TwoFactorEnableBody(password: "pw");
      expect(enable.toJson(), {"password": "pw", "issuer": null});

      const verify = TwoFactorVerifyBody(code: "123456", trustDevice: true);
      expect(verify.toJson()["trustDevice"], isTrue);

      const response = TwoFactorEnableResponse(totpURI: "otpauth://x");
      expect(response.backupCodes, isEmpty);
    });
  });

  group("anonymous plugin", () {
    test("exposes its client type", () {
      expect(BetterAuthAnonymous, isNotNull);
    });
  });

  group("typed social sign-in", () {
    test("SignInSocialBody.of maps a SocialProvider to its wire id", () {
      final body = SignInSocialBody.of(provider: SocialProvider.google);
      expect(body.provider, "google");
    });

    test("carries a native id token", () {
      final body = SignInSocialBody.of(
        provider: SocialProvider.apple,
        idToken: const SocialIdTokenBody(token: "abc"),
      );

      expect(body.idToken?.token, "abc");
      expect(body.toJson()["provider"], "apple");
    });

    test("every provider has a non-empty id", () {
      for (final p in SocialProvider.values) {
        expect(p.id, isNotEmpty);
      }
    });
  });
}

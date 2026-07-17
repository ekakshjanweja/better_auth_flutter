// Compile-checks that each plugin library exposes its typed surface. These are
// import-and-reference assertions: they only compile if the sub-barrels export
// the expected types and the client extension getters exist.
import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/plugins/anonymous.dart";
import "package:better_auth_flutter/plugins/api_key.dart";
import "package:better_auth_flutter/plugins/magic_link.dart";
import "package:better_auth_flutter/plugins/multi_session.dart";
import "package:better_auth_flutter/plugins/one_time_token.dart";
import "package:better_auth_flutter/plugins/organization.dart";
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

  group("magic_link plugin", () {
    test("exposes a typed request body", () {
      const body = MagicLinkBody(email: "a@b.c", callbackURL: "app://cb");
      expect(body.toJson()["email"], "a@b.c");
      expect(BetterAuthMagicLink, isNotNull);
    });
  });

  group("api_key plugin", () {
    test("models the create-only key field as nullable", () {
      const created = ApiKey(id: "1", key: "secret");
      expect(created.key, "secret");
      // On list/get the secret is absent.
      const listed = ApiKey(id: "1", start: "sk_ab");
      expect(listed.key, isNull);
      expect(listed.start, "sk_ab");
    });
  });

  group("organization plugin", () {
    test("exposes typed models", () {
      const body = CreateOrganizationBody(name: "Acme", slug: "acme");
      expect(body.toJson()["slug"], "acme");

      const org = FullOrganization(id: "1", name: "Acme");
      expect(org.members, isEmpty);
      expect(org.invitations, isEmpty);

      expect(BetterAuthOrganization, isNotNull);
    });
  });

  group("multi_session and one_time_token plugins", () {
    test("expose their client types", () {
      expect(BetterAuthMultiSession, isNotNull);
      expect(BetterAuthOneTimeToken, isNotNull);

      const token = OneTimeTokenResponse(token: "ott_abc");
      expect(token.token, "ott_abc");
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

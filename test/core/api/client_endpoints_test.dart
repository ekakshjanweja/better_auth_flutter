// Guards the Better Auth 1.7 endpoint contract at the HTTP layer.
//
// Each test mocks one route at the exact method + path the 1.7 server
// exposes (verified against the live `/open-api/generate-schema` output)
// and asserts the request body the client sends. If the server renames a
// route or requires a new selector again, the unmatched mock throws and the
// test fails instead of the app calling a dead endpoint at runtime.
import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/api/models/result/result/result.dart";
import "package:better_auth_flutter/src/core/api/models/result/status_response/status_response.dart";
import "package:better_auth_flutter/src/core/api/models/result/success_response/success_response.dart";
import "package:better_auth_flutter/src/core/models/account/account.dart";
import "package:better_auth_flutter/src/plugins/admin/better_auth_admin.dart";
import "package:better_auth_flutter/src/plugins/anonymous/better_auth_anonymous.dart";
import "package:better_auth_flutter/src/plugins/email_otp/better_auth_email_otp.dart";
import "package:better_auth_flutter/src/plugins/organization/better_auth_organization.dart";
import "package:better_auth_flutter/src/plugins/two_factor/models/two_factor_models.dart";
import "package:dio/dio.dart";
import "package:flutter_test/flutter_test.dart";
import "package:http_mock_adapter/http_mock_adapter.dart";

const _baseUrl = "http://localhost:3000/api/auth";

Dio _dio(DioAdapter adapter) => Dio(BaseOptions(baseUrl: _baseUrl))
  ..httpClientAdapter = adapter;

void main() {
  group("1.7 renamed routes", () {
    test("forgotPassword posts /request-password-reset", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/request-password-reset",
        (server) => server.reply(200, {"status": true}),
        // Null extras are stripped by the generated client.
        data: {"email": "a@b.c"},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.forgotPassword(email: "a@b.c");

      expect(result, isA<Success<StatusResponse>>());
    });

    test("openApiReference gets /open-api/generate-schema", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/open-api/generate-schema",
        (server) => server.reply(200, {"openapi": "3.0.0"}),
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.openApiReference();

      expect(result, isA<Success<dynamic>>());
    });

    test("passkey authenticate options are fetched with GET", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/passkey/generate-authenticate-options",
        (server) => server.reply(200, {"challenge": "x"}),
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.generatePasskeyAuthenticateOptions();

      expect(result, isA<Success<dynamic>>());
    });
  });

  group("1.7 account selectors", () {
    test("unlinkAccount sends the local account id", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/unlink-account",
        (server) => server.reply(200, {"status": true}),
        data: {"accountId": "acc_1"},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.unlinkAccount(accountId: "acc_1");

      expect(result, isA<Success<StatusResponse>>());
    });

    test("getAccessToken supports the account-cookie selector", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/get-access-token",
        (server) => server.reply(200, {"accessToken": "tok"}),
        // Null extras are stripped by the generated client.
        data: {"useAccountCookie": true},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.getAccessToken(useAccountCookie: true);

      expect(result, isA<Success<dynamic>>());
    });

    test("refreshToken supports the account-id selector", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/refresh-token",
        (server) => server.reply(200, {"accessToken": "tok"}),
        // Null extras are stripped by the generated client.
        data: {"accountId": "acc_1"},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.refreshToken(accountId: "acc_1");

      expect(result, isA<Success<dynamic>>());
    });

    test("accountInfo exposes the 1.7 identity triple", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/account-info",
        (server) => server.reply(200, {
          "account": {
            "id": "acc_1",
            "providerId": "google",
            "issuer": "local:oauth:google",
            "accountId": "sub_1",
          },
        }),
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.accountInfo();

      final account = (result as Success<dynamic>).data["account"];
      expect(account["issuer"], "local:oauth:google");
    });

    test("Account parses the 1.7 issuer", () {
      final account = Account.fromJson({
        "id": "acc_1",
        "providerId": "credential",
        "accountId": "user_1",
        "userId": "user_1",
        "issuer": "local:credential",
      });
      expect(account.issuer, "local:credential");
    });
  });

  group("1.7 two-factor discrimination", () {
    test("otp enable responses carry no totpURI", () {
      final response = TwoFactorEnableResponse.fromJson({"method": "otp"});
      expect(response.method, "otp");
      expect(response.totpURI, isNull);
      expect(response.backupCodes, isEmpty);
    });

    test("totp enable responses still parse", () {
      final response = TwoFactorEnableResponse.fromJson({
        "method": "totp",
        "totpURI": "otpauth://x",
        "backupCodes": ["a", "b"],
      });
      expect(response.totpURI, "otpauth://x");
      expect(response.backupCodes, ["a", "b"]);
    });

    test("enable body carries the method", () {
      const body = TwoFactorEnableBody(password: "pw", method: "otp");
      expect(body.toJson(), {
        "password": "pw",
        "issuer": null,
        "method": "otp",
      });
    });
  });

  group("1.7 new core routes", () {
    test("updateSession posts a flat body", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/update-session",
        (server) => server.reply(200, {"ok": true}),
        data: {"lang": "fr"},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.updateSession(body: {"lang": "fr"});

      expect(result, isA<Success<dynamic>>());
    });

    test("deviceInfo polls with the user code", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/device",
        (server) => server.reply(200, {
          "user_code": "ABC-123",
          "status": "pending",
        }),
        queryParameters: {"user_code": "ABC-123"},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.deviceInfo(userCode: "ABC-123");

      expect(
        (result as Success<dynamic>).data["status"],
        "pending",
      );
    });

    test("oauthCallbackPost posts provider form fields", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/callback/apple",
        (server) => server.reply(200, {"url": "app://cb"}),
        data: {"code": "c", "state": "s"},
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      final result = await client.oauthCallbackPost(
        provider: "apple",
        body: {"code": "c", "state": "s"},
      );

      expect(result, isA<Success<dynamic>>());
    });

    test("errorCodes reads the server code reference", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/error",
        (server) => server.reply(200, {"codes": []}),
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      expect(await client.errorCodes(), isA<Success<dynamic>>());
    });

    test("organization additions resolve", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/organization/get-organization",
        (server) => server.reply(200, {"id": "org_1"}),
      );
      adapter.onGet(
        "/organization/get-active-member-role",
        (server) => server.reply(200, "owner"),
      );
      final client = BetterAuthClient(_dio(adapter), baseUrl: _baseUrl);

      expect(await client.getOrganization(), isA<Success<dynamic>>());
      expect(await client.getActiveMemberRole(), isA<Success<dynamic>>());
    });
  });

  group("1.7 new plugin routes", () {
    test("anonymous users can be deleted", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onPost(
        "/delete-anonymous-user",
        (server) => server.reply(200, {"success": true}),
      );
      final plugin = BetterAuthAnonymous(_dio(adapter), baseUrl: _baseUrl);

      final result = await plugin.deleteUser();

      expect((result as Success<SuccessResponse>).data.success, isTrue);
    });

    test("email-otp change and check flows", () async {
      final adapter = DioAdapter(dio: Dio());
      for (final route in [
        "/email-otp/request-email-change",
        "/email-otp/change-email",
        "/email-otp/check-verification-otp",
        "/email-otp/request-password-reset",
      ]) {
        adapter.onPost(
          route,
          (server) => server.reply(200, {"success": true}),
        );
      }
      final plugin = BetterAuthEmailOtp(_dio(adapter), baseUrl: _baseUrl);

      expect(
        await plugin.requestEmailChange(newEmail: "n@x.io"),
        isA<Success<SuccessResponse>>(),
      );
      expect(
        await plugin.changeEmail(newEmail: "n@x.io", otp: "123456"),
        isA<Success<SuccessResponse>>(),
      );
      expect(
        await plugin.checkVerificationOtp(
          email: "a@b.c",
          type: "sign-in",
          otp: "123456",
        ),
        isA<Success<SuccessResponse>>(),
      );
      expect(
        await plugin.requestPasswordReset(email: "a@b.c"),
        isA<Success<SuccessResponse>>(),
      );
    });

    test("admin get and update user", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/admin/get-user",
        (server) => server.reply(200, {
          "user": {"id": "1", "name": "Ada", "email": "ada@x.io"},
        }),
        queryParameters: {"id": "1"},
      );
      adapter.onPost(
        "/admin/update-user",
        (server) => server.reply(200, {
          "user": {"id": "1", "name": "Ada", "email": "ada@x.io"},
        }),
        data: {
          "userId": "1",
          "data": {"role": "admin"},
        },
      );
      final plugin = BetterAuthAdmin(_dio(adapter), baseUrl: _baseUrl);

      expect(await plugin.getUser(id: "1"), isA<Success<dynamic>>());
      expect(
        await plugin.updateUser(
          body: {
            "userId": "1",
            "data": {"role": "admin"},
          },
        ),
        isA<Success<dynamic>>(),
      );
    });

    test("organization get and member role", () async {
      final adapter = DioAdapter(dio: Dio());
      adapter.onGet(
        "/organization/get-organization",
        (server) => server.reply(200, {"id": "org_1"}),
      );
      adapter.onGet(
        "/organization/get-active-member-role",
        (server) => server.reply(200, "admin"),
      );
      final plugin = BetterAuthOrganization(
        _dio(adapter),
        baseUrl: _baseUrl,
      );

      expect(await plugin.getOrganization(), isA<Success<dynamic>>());
      expect(await plugin.getActiveMemberRole(), isA<Success<dynamic>>());
    });
  });
}

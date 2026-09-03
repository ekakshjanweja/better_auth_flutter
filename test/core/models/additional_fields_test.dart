import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter_test/flutter_test.dart";

Map<String, dynamic> _userJson() => {
  "id": "1",
  "name": "Ada",
  "email": "ada@example.com",
  "firstName": "Ada",
  "role": "admin",
  "logins": 3,
};

void main() {
  group("User.additionalFields", () {
    test("collects unknown keys instead of dropping them", () {
      final user = User.fromJson(_userJson());

      expect(user.id, "1");
      expect(user.additionalFields, {
        "firstName": "Ada",
        "role": "admin",
        "logins": 3,
      });
    });

    test("is empty when the server sends no custom keys", () {
      final user = User.fromJson({
        "id": "1",
        "name": "Ada",
        "email": "ada@example.com",
      });

      expect(user.additionalFields, isEmpty);
    });

    test("does not serialize back out", () {
      final user = User.fromJson(_userJson());

      expect(user.toJson(), isNot(contains("firstName")));
    });

    test("field reads typed values and null for absent keys", () {
      final user = User.fromJson(_userJson());

      expect(user.field<String>("firstName"), "Ada");
      expect(user.field<String>("role") ?? "user", "admin");
      expect(user.field<String>("missing"), isNull);
    });

    test("field throws on type mismatch", () {
      final user = User.fromJson(_userJson());

      expect(() => user.field<int>("firstName"), throwsArgumentError);
    });

    test("field supports decode for nested values", () {
      final user = User.fromJson({
        ..._userJson(),
        "prefs": {"lang": "fr"},
      });

      expect(
        user.field<String>(
          "prefs",
          decode: (v) => (v as Map)["lang"] as String,
        ),
        "fr",
      );
    });
  });

  group("Session.additionalFields", () {
    test("collects unknown keys", () {
      final session = Session.fromJson({
        "id": "s1",
        "token": "t",
        "expiresAt": "2030-01-01T00:00:00.000Z",
        "userId": "1",
        "theme": "dark",
      });

      expect(session.field<String>("theme"), "dark");
      expect(session.toJson(), isNot(contains("theme")));
    });
  });

  group("UsernameAvailableResponse", () {
    test("defaults to unavailable", () {
      expect(const UsernameAvailableResponse().available, isFalse);
      expect(
        UsernameAvailableResponse.fromJson({"available": true}).available,
        isTrue,
      );
    });
  });

  group("ResultX", () {
    test("data returns the value, error returns null on success", () {
      const result = Result<int>.ok(1);

      expect(result.data, 1);
      expect(result.error, isNull);
    });

    test("error returns the failure, data returns null on failure", () {
      const result = Result<int>.err(BetterError(message: "no", stack: null));

      expect(result.data, isNull);
      expect(result.error?.message, "no");
    });
  });
}

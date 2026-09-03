import "package:better_auth_flutter/plugins/passkey.dart";
import "package:flutter_test/flutter_test.dart";

Map<String, dynamic> _recordJson() => {
  "id": "pk_1",
  "name": "MacBook",
  "userId": "1",
  "credentialID": "cred",
  "publicKey": "pk",
  "counter": 7,
  "deviceType": "platform",
  "backedUp": true,
};

void main() {
  group("PasskeyRecord", () {
    test("parses a stored passkey row", () {
      final record = PasskeyRecord.fromJson(_recordJson());

      expect(record.id, "pk_1");
      expect(record.name, "MacBook");
      expect(record.counter, 7);
      expect(record.backedUp, isTrue);
      expect(record.aaguid, isNull);
    });

    test("coerces a numeric counter to int", () {
      final record = PasskeyRecord.fromJson({..._recordJson(), "counter": 7.0});

      expect(record.counter, 7);
    });

    test("rejects a missing counter", () {
      final json = {..._recordJson()}..remove("counter");

      expect(() => PasskeyRecord.fromJson(json), throwsFormatException);
    });
  });

  group("PasskeyUpdateResponse", () {
    test("nests the updated record", () {
      final response = PasskeyUpdateResponse.fromJson({
        "passkey": _recordJson(),
      });

      expect(response.passkey.id, "pk_1");
    });
  });
}

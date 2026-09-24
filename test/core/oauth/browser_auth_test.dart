import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter_test/flutter_test.dart";
import "package:url_launcher/url_launcher.dart";

void main() {
  group("BrowserAuth.authenticate", () {
    test("completes when a matching deep link arrives", () async {
      final links = Stream<Uri>.fromIterable([
        Uri.parse("myapp://callback?token=ott_1"),
      ]);
      Uri? launched;

      final auth = BrowserAuth(
        launchUrl: (url, {required LaunchMode mode}) async {
          launched = url;
          return true;
        },
        supportsLaunchMode: (mode) async => mode == LaunchMode.inAppBrowserView,
        linkStream: links,
      );

      final callback = await auth.authenticate(
        url: "https://provider/auth",
        callbackUrlScheme: "myapp",
      );

      expect(launched, Uri.parse("https://provider/auth"));
      expect(callback, "myapp://callback?token=ott_1");
    });

    test("does not complete from a stale leftover deep link", () async {
      var launched = false;
      final auth = BrowserAuth(
        launchUrl: (url, {required LaunchMode mode}) async {
          launched = true;
          return true;
        },
        supportsLaunchMode: (_) async => false,
        linkStream: const Stream.empty(),
        timeout: const Duration(milliseconds: 20),
      );

      await expectLater(
        auth.authenticate(
          url: "https://provider/auth",
          callbackUrlScheme: "myapp",
        ),
        throwsA(
          isA<BrowserAuthException>().having(
            (e) => e.code,
            "code",
            "OAUTH_TIMEOUT",
          ),
        ),
      );
      expect(launched, isTrue);
    });

    test(
      "falls back to externalApplication when Custom Tabs is missing",
      () async {
        LaunchMode? used;
        final auth = BrowserAuth(
          launchUrl: (url, {required LaunchMode mode}) async {
            used = mode;
            return true;
          },
          supportsLaunchMode: (_) async => false,
          linkStream: Stream.value(Uri.parse("myapp://callback")),
        );

        await auth.authenticate(
          url: "https://provider/auth",
          callbackUrlScheme: "myapp",
        );

        expect(used, LaunchMode.externalApplication);
      },
    );

    test("throws NO_BROWSER when nothing can launch the URL", () async {
      final auth = BrowserAuth(
        launchUrl: (url, {required LaunchMode mode}) async => false,
        supportsLaunchMode: (_) async => true,
        linkStream: const Stream.empty(),
      );

      expect(
        () => auth.authenticate(
          url: "https://provider/auth",
          callbackUrlScheme: "myapp",
        ),
        throwsA(
          isA<BrowserAuthException>().having(
            (e) => e.code,
            "code",
            "NO_BROWSER",
          ),
        ),
      );
    });
  });
}

import "dart:async";

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter_test/flutter_test.dart";
import "package:url_launcher/url_launcher.dart";

void main() {
  group("BrowserAuth.matchesCallback", () {
    test("accepts scheme://callback", () {
      expect(
        BrowserAuth.matchesCallback(
          Uri.parse("myapp://callback?token=1"),
          "myapp",
        ),
        isTrue,
      );
    });

    test("rejects other hosts on the same scheme", () {
      expect(
        BrowserAuth.matchesCallback(Uri.parse("myapp://promo"), "myapp"),
        isFalse,
      );
    });

    test("rejects a different scheme", () {
      expect(
        BrowserAuth.matchesCallback(Uri.parse("other://callback"), "myapp"),
        isFalse,
      );
    });

    test("accepts scheme:///callback (empty host, path callback)", () {
      expect(
        BrowserAuth.matchesCallback(Uri.parse("myapp:///callback"), "myapp"),
        isTrue,
      );
    });
  });

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

    test("ignores a same-scheme link that is not the callback", () async {
      final links = StreamController<Uri>();
      final auth = BrowserAuth(
        launchUrl: (url, {required LaunchMode mode}) async => true,
        supportsLaunchMode: (_) async => false,
        linkStream: links.stream,
        timeout: const Duration(milliseconds: 40),
      );

      final future = auth.authenticate(
        url: "https://provider/auth",
        callbackUrlScheme: "myapp",
      );
      links.add(Uri.parse("myapp://promo"));

      await expectLater(
        future,
        throwsA(
          isA<BrowserAuthException>().having(
            (e) => e.code,
            "code",
            "OAUTH_TIMEOUT",
          ),
        ),
      );
      await links.close();
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

    test("cancel completes an in-flight authenticate", () async {
      final auth = BrowserAuth(
        launchUrl: (url, {required LaunchMode mode}) async => true,
        supportsLaunchMode: (_) async => false,
        linkStream: const Stream.empty(),
      );

      final future = auth.authenticate(
        url: "https://provider/auth",
        callbackUrlScheme: "myapp",
      );
      await Future<void>.delayed(Duration.zero);
      auth.cancel();

      await expectLater(
        future,
        throwsA(
          isA<BrowserAuthException>().having(
            (e) => e.code,
            "code",
            "OAUTH_CANCELLED",
          ),
        ),
      );
    });

    test("resume without a callback cancels after the grace period", () async {
      final resumed = StreamController<void>();
      final auth = BrowserAuth(
        launchUrl: (url, {required LaunchMode mode}) async => true,
        supportsLaunchMode: (_) async => false,
        linkStream: const Stream.empty(),
        onAppResumed: resumed.stream,
        cancelGrace: Duration.zero,
      );

      final future = auth.authenticate(
        url: "https://provider/auth",
        callbackUrlScheme: "myapp",
      );
      await Future<void>.delayed(Duration.zero);
      resumed.add(null);

      await expectLater(
        future,
        throwsA(
          isA<BrowserAuthException>().having(
            (e) => e.code,
            "code",
            "OAUTH_CANCELLED",
          ),
        ),
      );
      await resumed.close();
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

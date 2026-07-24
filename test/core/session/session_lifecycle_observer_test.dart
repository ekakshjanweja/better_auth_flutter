import "package:better_auth_flutter/src/core/session/session_lifecycle_observer.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";

void main() {
  group("SessionLifecycleObserver", () {
    test("calls onResume when the app resumes", () {
      var calls = 0;
      SessionLifecycleObserver(
        onResume: () => calls++,
      ).didChangeAppLifecycleState(AppLifecycleState.resumed);

      expect(calls, 1);
    });

    test("ignores non-resumed lifecycle states", () {
      var calls = 0;
      SessionLifecycleObserver(onResume: () => calls++)
        ..didChangeAppLifecycleState(AppLifecycleState.inactive)
        ..didChangeAppLifecycleState(AppLifecycleState.paused)
        ..didChangeAppLifecycleState(AppLifecycleState.detached)
        ..didChangeAppLifecycleState(AppLifecycleState.hidden);

      expect(calls, 0);
    });

    test("throttles a rapid second resume", () {
      var calls = 0;
      var now = DateTime(2026, 1, 1, 12);
      final observer = SessionLifecycleObserver(
        onResume: () => calls++,
        throttle: const Duration(seconds: 30),
        now: () => now,
      );

      observer.didChangeAppLifecycleState(AppLifecycleState.resumed);
      now = now.add(const Duration(seconds: 5));
      observer.didChangeAppLifecycleState(AppLifecycleState.resumed);

      expect(calls, 1, reason: "second resume is within the throttle window");
    });

    test("refreshes again once the throttle window passes", () {
      var calls = 0;
      var now = DateTime(2026, 1, 1, 12);
      final observer = SessionLifecycleObserver(
        onResume: () => calls++,
        throttle: const Duration(seconds: 30),
        now: () => now,
      );

      observer.didChangeAppLifecycleState(AppLifecycleState.resumed);
      now = now.add(const Duration(seconds: 31));
      observer.didChangeAppLifecycleState(AppLifecycleState.resumed);

      expect(calls, 2);
    });
  });
}

import "dart:io";

import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";

class _NoopStorage implements StorageInterface {
  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async {}

  @override
  Future<List<Cookie>> loadCookies(String url) async => const [];

  @override
  Future<void> deleteCookies(String url) async {}

  @override
  Future<void> deleteAll() async {}
}

void main() {
  setUp(() async {
    await BetterAuthFlutter.initialize(
      url: "https://auth.example.com/api/auth",
      dio: Dio(),
      store: _NoopStorage(),
      hydrateOnInit: false,
    );
  });

  testWidgets("rebuilds observers when refresh flags change", (tester) async {
    await tester.pumpWidget(const BetterAuthProvider(child: SizedBox.shrink()));

    await tester.pumpWidget(
      const BetterAuthProvider(
        refreshOnResume: false,
        refreshOnReconnect: false,
        child: SizedBox.shrink(),
      ),
    );

    await tester.pumpWidget(const BetterAuthProvider(child: SizedBox.shrink()));

    expect(find.byType(BetterAuthProvider), findsOneWidget);
  });
}

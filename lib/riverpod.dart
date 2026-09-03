/// Riverpod 3 bindings for Better Auth Flutter.
///
/// Import this alongside the main library — it is separate so apps that do
/// not use Riverpod pay nothing for it:
///
/// ```dart
/// import "package:better_auth_flutter/better_auth_flutter.dart";
/// import "package:better_auth_flutter/riverpod.dart";
/// import "package:flutter_riverpod/flutter_riverpod.dart";
///
/// void main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   await BetterAuthFlutter.initialize(url: "https://example.com/api/auth");
///   runApp(const ProviderScope(child: MyApp()));
/// }
/// ```
library;

export "../src/riverpod/better_auth_providers.dart";

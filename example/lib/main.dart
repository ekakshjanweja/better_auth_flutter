import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

import "screens/home_screen.dart";
import "screens/sign_in_screen.dart";

/// Point this at your Better Auth server. The bundled `vigilant-spoon` server
/// runs at this address by default (`bun run dev` in that directory).
const String kBaseUrl = "http://localhost:8000/api/auth";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await BetterAuthFlutter.initialize(
    url: kBaseUrl,
    enableLogging: kDebugMode,
  );

  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BetterAuthProvider(
      child: MaterialApp(
        title: "better_auth_flutter example",
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
        // The whole app is gated on auth state. On cold start this shows the
        // loading branch until the stored session resolves — the sign-in screen
        // never flashes.
        home: BetterAuthBuilder(
          authenticated: (context, user) => HomeScreen(user: user),
          unauthenticated: (context) => const SignInScreen(),
        ),
      ),
    );
  }
}

import 'dart:developer';
import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: ".env");

  // Initialize Better Auth
  try {
    await BetterAuthFlutter.initialize(
      url: "http://10.0.2.2:8000/api/auth", // Your Better Auth server URL
    );
    log("BetterAuth initialized successfully");
  } catch (e) {
    log("Failed to initialize BetterAuth: $e");
  }

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: AuthPage());
  }
}

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            FilledButton(
              onPressed: () async {
                await AuthRepo.signUpWithEmailAndPassword(
                  email: "ekaksh@gmail.com",
                  password: "ekaksh31#!",
                  name: "Ekaksh",
                );
              },
              child: Text("Sign Up"),
            ),
            FilledButton(
              onPressed: () async {
                await AuthRepo.signInWithEmailAndPassword(
                  email: "ekaksh@gmail.com",
                  password: "ekaksh31#!",
                );
              },
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Better Auth")),
      body: Center(child: Text("Hello World")),
    );
  }
}

class AuthRepo {
  static final BetterAuthClient client = BetterAuthFlutter.client;

  static Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final response = await client.signIn.email(
      request: SignInEmailRequest(email: email, password: password),
    );

    if (response.error != null) {
      log(response.error!.message);
      return;
    }

    log(response.data.toString());
  }

  static Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await client.signUp.email(
      request: SignUpRequest(name: name, email: email, password: password),
    );

    if (response.error != null) {
      log(response.error!.message);
      return;
    }

    log(response.data.toString());
  }
}

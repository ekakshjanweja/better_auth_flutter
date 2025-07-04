import 'dart:developer';
import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

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

  await AuthRepo.initializeGoogleSignIn();

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
            FilledButton(
              onPressed: () async {
                await AuthRepo.signOut();
              },
              child: Text("Sign Out"),
            ),
            FilledButton(
              onPressed: () async {
                await AuthRepo.signInWithGoogle();
              },
              child: Text("Sign In With Google"),
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
  static final BetterAuthClient _client = BetterAuthFlutter.client;

  static final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  static final List<String> scopes = <String>["openid", "email", "profile"];

  static Future<void> initializeGoogleSignIn() async {
    await _googleSignIn.initialize(
      serverClientId: dotenv.env['GOOGLE_CLIENT_ID']!,
    );
  }

  static Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final response = await _client.signIn.email(
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
    final response = await _client.signUp.email(
      request: SignUpRequest(name: name, email: email, password: password),
    );

    if (response.error != null) {
      log(response.error!.message);
      return;
    }

    log(response.data.toString());
  }

  static Future<void> signOut() async {
    await _googleSignIn.signOut();
    final response = await _client.signOut();

    if (response.error != null) {
      log(response.error!.message);
      return;
    }
  }

  static Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount user = await _googleSignIn.authenticate(
        scopeHint: scopes,
      );

      final GoogleSignInAuthentication authentication = user.authentication;
      final String? idToken = authentication.idToken;

      if (idToken == null) {
        log("Id token is null", error: "GOOGLE_SIGN_IN_ERROR");
        return;
      }

      final accessToken = await _getAccessToken(user);

      if (accessToken == null) {
        log("Access token is null", error: "GOOGLE_SIGN_IN_ERROR");
        return;
      }

      final response = await _client.signIn.social(
        request: SignInSocialRequest(
          provider: SocialProvider.google,
          idToken: SocialIdTokenBody(token: idToken, accessToken: accessToken),
          scopes: scopes,
        ),
      );

      if (response.error != null) {
        log(response.error!.message, error: "GOOGLE_SIGN_IN_ERROR");
        return;
      }

      log(response.data.toString(), name: "GOOGLE_SIGN_IN_SUCCESS");
    } on GoogleSignInException catch (e) {
      log(e.toString(), error: "GOOGLE_SIGN_IN_ERROR");

      return;
    } catch (e) {
      log(e.toString(), error: "GOOGLE_SIGN_IN_ERROR");
      return;
    }
  }

  static Future<String?> _getAccessToken(GoogleSignInAccount user) async {
    final ClientAuthorizationTokenData? tokens = await GoogleSignInPlatform
        .instance
        .clientAuthorizationTokensForScopes(
          ClientAuthorizationTokensForScopesParameters(
            request: AuthorizationRequestDetails(
              scopes: scopes,
              userId: user.id,
              email: user.email,
              promptIfUnauthorized: false,
            ),
          ),
        );

    if (tokens == null) return null;

    final accessToken = tokens.accessToken;

    return accessToken;
  }
}

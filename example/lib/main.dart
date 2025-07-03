import 'dart:developer';
import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  try {
    await BetterAuth.init(baseUrl: Uri.parse("http://10.0.2.2:8000"));
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
    return MaterialApp(
      title: "Better Auth Flutter",
      home: Home(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            ElevatedButton(onPressed: Repo.signUp, child: Text("Sign Up")),
            ElevatedButton(onPressed: Repo.signIn, child: Text("Sign In")),
            ElevatedButton(onPressed: Repo.signOut, child: Text("Sign Out")),
            ElevatedButton(
              onPressed: () async {
                await Repo.initializeGoogleSignIn();
                final (user, error) = await Repo.signInWithGoogle();
                if (error != null) {
                  log("Google signin error: ${error.message}");
                  return;
                }

                log("Google signin successful: ${user?.name}");
              },
              child: Text("Google Sign In"),
            ),
            ElevatedButton(
              onPressed: Repo.getSession,
              child: Text("Get Session"),
            ),
            ElevatedButton(
              onPressed: Repo.listAccounts,
              child: Text("List Accounts"),
            ),
            ElevatedButton(
              onPressed: Repo.sendVerificationEmail,
              child: Text("Send Verification Email"),
            ),
            ElevatedButton(
              onPressed:
                  () => Repo.verifyEmail(
                    "eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Impla2Frc2hAZ21haWwuY29tIiwiaWF0IjoxNzQ3MzIzNjg0LCJleHAiOjE3NDczMjcyODR9.xzJO-ElQReO97i_jnpIzND-jLgLCqNM5_WQXqebqF3k",
                  ),
              child: Text("Verify Email"),
            ),
            ElevatedButton(
              onPressed: Repo.checkClientState,
              child: Text("Check Client State"),
            ),
            ElevatedButton(
              onPressed: () async {
                // final (result, error) = await BetterAuth.instance.client
                //     .socialSignIn(
                //       provider: SocialProvider.google,
                //       callbackUrl: "/temp",
                //     );

                // if (error != null) {
                //   log(error.message.toString());
                //   return;
                // }

                // final res = await FlutterWebAuth2.authenticate(
                //   url: result!.toString(),
                //   callbackUrlScheme:
                //       "com.googleusercontent.apps.455710607825-heimo9nsl1vpp4n98mg0uosg6731hlfk",
                //   options: FlutterWebAuth2Options(),
                // );
                // log("FlutterWebAuth2 result: $res");
              },
              child: Text("Google Sign In with Callback"),
            ),
          ],
        ),
      ),
    );
  }
}

class Repo {
  static final betterAuth = BetterAuth.instance.client;

  static final GoogleSignIn googleSignIn = GoogleSignIn.instance;

  static final List<String> scopes = <String>["openid", "email", "profile"];

  static Future<void> initializeGoogleSignIn() async {
    try {
      await googleSignIn.initialize(
        serverClientId: dotenv.env["GOOGLE_CLIENT_ID"]!,
      );
    } catch (e) {
      log("Failed to initialize Google Sign-In: ${e.toString()}", error: e);
    }
  }

  static void signUp() async {
    try {
      final (result, error) = await BetterAuth.instance.client
          .signUpWithEmailAndPassword(
            email: "jekaksh@gmail.com",
            password: "ekaksh123",
            name: "ekaksh",
          );

      if (error != null) {
        log("Signup error: ${error.message}");
        return;
      }

      log("Signup successful: $result");

      // Check if user was automatically signed in
      if (betterAuth.user != null) {
        log("User auto-signed in: ${betterAuth.user!.name}");
      }

      // Get current session
      getSession();
    } catch (e) {
      log("Signup exception: $e");
    }
  }

  static void signIn() async {
    try {
      final (user, error) = await BetterAuth.instance.client
          .signInWithEmailAndPassword(
            email: "jekaksh@gmail.com",
            password: "ekaksh123",
          );

      if (error != null) {
        log("Signin error: ${error.message}");
        return;
      }

      log("Signin successful: ${user?.name}");

      // The client state should now be updated
      log("Client user: ${betterAuth.user?.name}");
      log("Client session valid: ${betterAuth.session != null}");
    } catch (e) {
      log("Signin exception: $e");
    }
  }

  static void signOut() async {
    try {
      final error = await BetterAuth.instance.client.signOut();

      if (error != null) {
        log("Signout error: ${error.message}");
        return;
      }

      log("Signed out successfully");

      // Verify client state is cleared
      log("Client user after signout: ${betterAuth.user}");
      log("Client session after signout: ${betterAuth.session}");
    } catch (e) {
      log("Signout exception: $e");
    }
  }

  static Future<(User?, BetterAuthFailure?)> signInWithGoogle() async {
    try {
      log("Starting Google Sign-In", name: "AuthRepo");
      final GoogleSignInAccount user = await googleSignIn.authenticate(
        scopeHint: scopes,
      );
      log("Google Sign-In successful: ${user.email}", name: "AuthRepo");

      // Get the ID token from authentication
      final GoogleSignInAuthentication auth = user.authentication;
      final String? idToken = auth.idToken;

      if (idToken == null) {
        return (
          null,
          BetterAuthFailure(
            code: BetterAuthError.unKnownError,
            message: "ID Token is null",
          ),
        );
      }

      final accessToken = await _getAccessToken(user);

      if (accessToken == null) {
        return (
          null,
          BetterAuthFailure(
            code: BetterAuthError.unKnownError,
            message: "Access token is null",
          ),
        );
      }

      log(
        "ID Token: ${idToken.substring(0, 20)}...\nAccess Token: ${accessToken.substring(0, 20)}...",
        name: "AuthRepo",
      );

      final (result, error) = await betterAuth.signInWithIdToken(
        provider: SocialProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      if (error != null) {
        return (
          null,
          BetterAuthFailure(
            code: BetterAuthError.unKnownError,
            message: error.message,
          ),
        );
      }

      if (result == null) {
        return (
          null,
          BetterAuthFailure(
            code: BetterAuthError.unKnownError,
            message: "User is null",
          ),
        );
      }

      return (result, null);
    } on GoogleSignInException catch (e) {
      log("Google Sign-In error: ${e.toString()}", error: e);
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    } catch (e) {
      return (
        null,
        BetterAuthFailure(
          code: BetterAuthError.unKnownError,
          message: e.toString(),
        ),
      );
    }
  }

  static Future<String?> _getAccessToken(GoogleSignInAccount user) async {
    //TODO: This can be used to get other auth headers as well

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
    if (tokens == null) {
      return null;
    }

    log("Tokens: ${tokens.accessToken}", name: "AuthRepo");

    return tokens.accessToken;
  }

  static void getSession() async {
    try {
      final (sessionData, error) =
          await BetterAuth.instance.client.getSession();
      if (error != null) {
        log("Get session error: ${error.message}");
        return;
      }

      if (sessionData != null) {
        final (session, user) = sessionData;
        log(
          "Session retrieved - User: ${user?.name}, Session expires: ${session?.expiresAt}",
        );

        // Verify client state is updated
        log(
          "Client state - User: ${betterAuth.user?.name}, Session: ${betterAuth.session?.id}",
        );
      } else {
        log("No active session found");
      }
    } catch (e) {
      log("Get session exception: $e");
    }
  }

  static void sendVerificationEmail() async {
    try {
      final error = await BetterAuth.instance.client.sendVerificationEmail(
        email: "jekaksh@gmail.com",
      );

      if (error != null) {
        log("Send verification error: ${error.message}");
        return;
      }
      log("Verification email sent successfully");
    } catch (e) {
      log("Send verification exception: $e");
    }
  }

  static void verifyEmail(String token) async {
    try {
      final error = await BetterAuth.instance.client.verifyEmail(
        verificationToken: token,
      );

      if (error != null) {
        log("Email verification error: ${error.message}");
        return;
      }

      log("Email verified successfully");
    } catch (e) {
      log("Email verification exception: $e");
    }
  }

  static void listAccounts() async {
    try {
      final (accounts, error) = await BetterAuth.instance.client.listAccounts();

      if (error != null) {
        log("List accounts error: ${error.message}");
        return;
      }

      if (accounts == null || accounts.isEmpty) {
        log("No accounts found");
        return;
      }

      log("Found ${accounts.length} accounts:");
      for (Account account in accounts) {
        log("Account: ${account.provider} - ${account.id}");
      }
    } catch (e) {
      log("List accounts exception: $e");
    }
  }

  static void checkClientState() {
    try {
      log("=== Current Client State ===");
      log("Initialized: ${betterAuth.isInitialized}");
      log("User: ${betterAuth.user?.name ?? 'None'}");
      log("User Email: ${betterAuth.user?.email ?? 'None'}");
      log("Session: ${betterAuth.session?.id ?? 'None'}");
      log("Session Expires: ${betterAuth.session?.expiresAt ?? 'None'}");
      log("==========================");
    } catch (e) {
      log("Check client state exception: $e");
    }
  }
}

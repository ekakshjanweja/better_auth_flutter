import 'dart:developer';
import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BetterAuth.init(
    baseUrl: Uri.parse(
      "https://6a2d-2409-40d0-12e2-458d-bc7a-1ebc-8342-ffae.ngrok-free.app",
    ),
  );
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
              onPressed: Repo.signInWithGoogle,
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
              onPressed: () => Repo.verifyEmail(
                "eyJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6Impla2Frc2hAZ21haWwuY29tIiwiaWF0IjoxNzQ3MzIzNjg0LCJleHAiOjE3NDczMjcyODR9.xzJO-ElQReO97i_jnpIzND-jLgLCqNM5_WQXqebqF3k",
              ),
              child: Text("Verify Email"),
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

  static void signUp() async {
    final (result, error) = await BetterAuth.instance.client
        .signUpWithEmailAndPassword(
          email: "jekaksh@gmail.com",
          password: "ekaksh123",
          name: "ekaksh",
        );

    if (error != null) {
      log(error.message.toString());
      return;
    }

    log(result.toString());
  }

  static void signIn() async {
    final (result, error) = await BetterAuth.instance.client
        .signInWithEmailAndPassword(
          email: "jekaksh@gmail.com",
          password: "ekaksh123",
        );

    if (error != null) {
      log(error.message.toString());
      return;
    }

    log(result.toString());
  }

  static void signOut() async {
    final error = await BetterAuth.instance.client.signOut();

    if (error != null) {
      log(error.message.toString());
      return;
    }

    // await googleSignIn.signOut();

    log("Signed out");
  }

  static void signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn.instance;

    await googleSignIn.initialize(
      clientId: "YOUR_MOBILE_CLIENT_ID",
      serverClientId: "YOUR_WEB_CLIENT_ID",
    );

    googleSignIn.authenticationEvents.listen((event) async {
      final GoogleSignInAccount? user = switch (event) {
        GoogleSignInAuthenticationEventSignIn() => event.user,
        GoogleSignInAuthenticationEventSignOut() => null,
      };

      if (user != null) {
        log("User signed in: ${user.email}");

        try {
          final List<String> scopes = <String>["openid", "email", "profile"];

          final String? idToken = user.authentication.idToken;
          if (idToken == null || idToken.isEmpty) {
            log("Google idToken is null or empty");
            return;
          }

          final GoogleSignInClientAuthorization clientAuth = await user
              .authorizationClient
              .authorizeScopes(scopes);

          final (result, error) = await BetterAuth.instance.client
              .signInWithIdToken(
                provider: SocialProvider.google,
                idToken: idToken,
                accessToken: clientAuth.accessToken,
              );

          if (error != null) {
            log("Error: ${error.message}");
          }

          log("Sign in result: ${result?.toString()}");
        } on GoogleSignInException catch (e) {
          log("Google Sign In Exception: ${e.toString()}");
        } catch (e, st) {
          log(
            "Unexpected error during Google sign-in",
            error: e,
            stackTrace: st,
          );
        }
      }
    });
  }

  // static void signInWithGoogle() async {
  //   final GoogleSignIn googleSignIn = GoogleSignIn.instance;

  //   googleSignIn.initialize(clientId: "", serverClientId: "");

  //   googleSignIn.authenticationEvents.listen((event) {});

  //   final List<String> scopes = <String>["openid", "email", "profile"];

  //   final GoogleSignInServerAuthorization? serverAuthorization =
  //       await googleSignIn.authorizationClient.authorizeServer(scopes);

  //   // if (googleSignInAccount == null) {
  //   //   log("Google sign in cancelled");
  //   //   return;
  //   // }

  //   // final GoogleSignInAuthentication googleSignInAuthentication =
  //   //     await googleSignInAccount.authentication;

  //   // final accessToken = "dvdsv";
  //   // final idToken = googleSignInAuthentication.idToken;

  //   // if (accessToken == null) {
  //   //   log("Google access token is null");
  //   //   return;
  //   // }

  //   // if (idToken == null) {
  //   //   log("Google id token is null");
  //   //   return;
  //   // }

  //   // final (res, err) = await BetterAuth.instance.client.signInWithIdToken(
  //   //   provider: SocialProvider.google,
  //   //   idToken: idToken,
  //   //   accessToken: accessToken,
  //   // );

  //   // if (err != null) {
  //   //   log(err.message.toString());
  //   //   return;
  //   // }

  //   // log(res.toString());
  // }

  static void getSession() async {
    final (session, error) = await BetterAuth.instance.client.getSession();
    if (error != null) {
      log(error.message.toString());
      return;
    }

    log(session.toString());
  }

  static void sendVerificationEmail() async {
    final error = await BetterAuth.instance.client.sendVerificationEmail(
      email: "jekaksh@gmail.com",
    );

    if (error != null) {
      log(error.message.toString());
      return;
    }
    log("Verification email sent");
  }

  static void verifyEmail(String token) async {
    final error = await BetterAuth.instance.client.verifyEmail(
      verificationToken: token,
    );

    if (error != null) {
      log(error.message.toString());
      return;
    }
  }

  static void listAccounts() async {
    final (accounts, error) = await BetterAuth.instance.client.listAccounts();

    if (error != null) {
      log(error.message.toString());
      return;
    }

    if (accounts == null) {
      log("No accounts found");
      return;
    }

    for (Account account in accounts) {
      log(account.toString());
    }
  }
}

# better_auth_flutter

Flutter client-side SDK for Better Auth — simplifies integration with the Better Auth backend. Supports email/password authentication, social login, session management, and secure storage.

P.S if you have any suggestions or want to contribute to this, reach out to me [https://x.com/ekaksh_janweja](here)

## Features

- Email/password sign up, sign in, and sign out
- Social login (Google & Apple) via ID token
- Other social providers are supported via web redirection [flutter_web_auth_2](https://pub.dev/packages/flutter_web_auth_2)
- Automatic session retrieval and validation
- Persistent cookie-based sessions with `cookie_jar`
- Easy-to-use singleton client: `BetterAuth.instance.client`

## Getting Started

### Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  better_auth_flutter: ^0.0.1
```

Then run:

```bash
flutter pub get
```

### Initialization

Before using any API, initialize the SDK (e.g., in your `main.dart`):

```dart
import 'package:flutter/material.dart';
import 'package:better_auth_flutter/better_auth_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BetterAuth.init(baseUrl: Uri(scheme: "http", host: "localhost", port: 8080)); //URI of your backend
  runApp(MyApp());
}
```

## Authentication

### Email/Password Authentication

```dart
// Sign up
final (result, error) = await BetterAuth.instance.client.signUpWithEmailAndPassword(
  email: "user@example.com",
  password: "password123",
  name: "John Doe",
);

// Sign in
final (user, error) = await BetterAuth.instance.client.signInWithEmailAndPassword(
  email: "user@example.com",
  password: "password123",
);

// Sign out
final error = await BetterAuth.instance.client.signOut();
```

### Anonymous Sign-In

```dart
// Sign in anonymously
final (user, error) = await BetterAuth.instance.client.signInAnonymous();
```

### Email OTP Sign-In

```dart
// Send OTP to email
final (result, error) = await BetterAuth.instance.client.sendVerificationOtp("user@example.com");
// Sign in with OTP
final (user, error) = await BetterAuth.instance.client.signInWithOtp(
  email: "user@example.com",
  otp: "123456",
);
```

### OAuth Login

For social authentication, you have two main approaches:

#### ID Token (Recommended for Google & Apple)

For Google and Apple, using ID tokens provides better security and user experience:

##### Google Sign-In

Add `google_sign_in: ^6.1.5` to your dependencies:

```dart
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn(
  serverClientId: "YOUR_GOOGLE_CLIENT_ID.googleusercontent.com",
);

// Google OAuth flow
final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

// Sign in with Better Auth
final (user, error) = await BetterAuth.instance.client.signInWithIdToken(
  provider: SocialProvider.google,
  idToken: googleAuth.idToken!,
  accessToken: googleAuth.accessToken!,
);
```

#### Apple Sign-In

Add `sign_in_with_apple: ^4.3.0` to your dependencies:

```dart
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// Apple OAuth flow
final credential = await SignInWithApple.getAppleIDCredential(
  scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
);

// Sign in with Better Auth
final (user, error) = await BetterAuth.instance.client.signInWithIdToken(
  provider: SocialProvider.apple,
  idToken: credential.identityToken!,
  accessToken: credential.authorizationCode!,
);
```

#### Redirect-Based OAuth

For other providers, use redirect-based authentication:

```dart
// Get OAuth URL
final (url, error) = await BetterAuth.instance.client.socialSignIn(
  provider: SocialProvider.github, // or any other provider
  callbackUrl: "your-app://auth",
);

// Handle the URL with flutter_web_auth_2 or similar
```

**Supported Providers:** Google, Apple, GitHub, Facebook, Discord, LinkedIn, Microsoft, Spotify, Twitch, X (Twitter)

## Issues and Support

If you encounter any issues or have feature requests, please raise [here](https://github.com/ekakshjanweja/better_auth_flutter).

# Better Auth Flutter

A comprehensive Flutter client package for [Better Auth](https://www.better-auth.com/) - providing seamless authentication integration with type-safe APIs and extensive feature support.

## Features

### 🔐 Authentication Methods
- **Email/Password** - Traditional email and password authentication
- **Username/Password** - Username-based authentication
- **Social Authentication** - Support for 10+ providers including Google, Apple, GitHub, and more
- **Anonymous Authentication** - Guest user support (coming soon)

### 👤 User Management
- **Profile Management** - Update user information, change email/password
- **Email Verification** - Send and verify email addresses
- **Password Reset** - Secure password recovery flow
- **Account Deletion** - Complete user data removal

### 🔗 Social Integration
- **Account Linking** - Connect multiple social accounts to one user
- **Provider Management** - List and unlink connected accounts
- **Token Management** - Refresh and retrieve access tokens
- **OAuth Callbacks** - Handle social authentication redirects

### 🗂️ Session Management
- **Multi-Session Support** - List and manage active sessions
- **Session Control** - Revoke individual or all sessions
- **Persistent Storage** - Automatic session persistence with SharedPreferences
- **Cookie Management** - Secure cookie-based authentication

### 🛡️ Security & Reliability
- **Type-Safe APIs** - Full type safety with Freezed models
- **Error Handling** - Comprehensive error types and messages
- **Result Pattern** - Clean success/failure handling
- **Automatic Retries** - Built-in network resilience

## Supported Social Providers

| Provider | Status | Provider | Status |
|----------|---------|----------|---------|
| Google | ✅ | Apple | ✅ |
| GitHub | ✅ | Facebook | ✅ |
| Discord | ✅ | LinkedIn | ✅ |
| Microsoft | ✅ | Spotify | ✅ |
| Twitch | ✅ | Twitter/X | ✅ |

> **Note**: All social providers currently require idToken-based authentication. Ensure your OAuth configuration supports OpenID Connect and returns an `idToken`.

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  better_auth_flutter: ^0.0.7
```

Then run:
```bash
flutter pub get
```

## Quick Start

### 1. Initialize Better Auth

Initialize the package in your `main()` function:

```dart
import 'package:better_auth_flutter/better_auth_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await BetterAuthFlutter.initialize(
    url: "https://your-better-auth-server.com/api/auth",
  );
  
  runApp(MyApp());
}
```

### 2. Get the Client

Access the authentication client:

```dart
final client = BetterAuthFlutter.client;
```

## Authentication

### Email & Password Sign Up

```dart
final result = await client.signUp.email(
  request: SignUpRequest(
    email: "user@example.com",
    password: "securePassword123",
    name: "John Doe",
  ),
);

if (result.error != null) {
  print("Error: ${result.error!.message}");
  return;
}

print("User created: ${result.data!.user.name}");
```

### Email & Password Sign In

```dart
final result = await client.signIn.email(
  request: SignInEmailRequest(
    email: "user@example.com", 
    password: "securePassword123",
  ),
);

if (result.error != null) {
  print("Error: ${result.error!.message}");
  return;
}

print("Welcome back, ${result.data!.user.name}!");
```

### Username Sign In

```dart
final result = await client.signIn.username(
  request: SignInUsernameRequest(
    username: "johndoe",
    password: "securePassword123",
  ),
);
```

### Social Authentication (Google Example)

> ⚠️ **Important**: Currently, only idToken-based social authentication is supported. Make sure your social provider is configured to return an idToken and use the `SocialIdTokenBody` approach shown below.

```dart
// Using google_sign_in package
final GoogleSignIn googleSignIn = GoogleSignIn();
final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

if (googleUser != null) {
  final GoogleSignInAuthentication auth = await googleUser.authentication;
  
  final result = await client.signIn.social(
    request: SignInSocialRequest(
      provider: SocialProvider.google,
      idToken: SocialIdTokenBody(
        token: auth.idToken!,
        accessToken: auth.accessToken!,
      ),
    ),
  );
  
  if (result.error == null) {
    print("Google sign-in successful!");
  }
}
```

### Sign Out

```dart
final result = await client.signOut();

if (result.error != null) {
  print("Error signing out: ${result.error!.message}");
} else {
  print("Signed out successfully");
}
```

## Session Management

### Get Current Session

```dart
final result = await client.getSession();

if (result.error != null) {
  print("No active session");
  return;
}

final session = result.data!.session;
final user = result.data!.user;

print("Session expires: ${session.expiresAt}");
print("User: ${user.name}");
```

### List All Sessions

```dart
final result = await client.listSessions();

if (result.error == null) {
  for (final session in result.data!) {
    print("Session: ${session.id} - ${session.userAgent}");
  }
}
```

### Revoke Sessions

```dart
// Revoke current session
await client.revokeSession();

// Revoke all sessions
await client.revokeSessions();

// Revoke other sessions (keep current)
await client.revokeOtherSessions();
```

## User Management

### Update User Profile

```dart
final result = await client.updateUser(
  request: UpdateUserRequest(
    name: "New Name",
    image: "https://example.com/avatar.jpg",
  ),
);
```

### Change Password

```dart
final result = await client.changePassword(
  request: ChangePasswordRequest(
    currentPassword: "oldPassword",
    newPassword: "newSecurePassword123",
  ),
);
```

### Change Email

```dart
final result = await client.changeEmail(
  request: ChangeEmailRequest(
    newEmail: "newemail@example.com",
  ),
);
```

### Email Verification

```dart
// Send verification email
final result = await client.sendVerificationEmail(
  request: SendVerificationEmailRequest(
    email: "user@example.com",
  ),
);

// Verify email with token
final verifyResult = await client.verifyEmail(
  token: "verification_token_from_email",
  callbackURL: "https://yourapp.com/verified",
);
```

### Password Reset

```dart
// Send reset email
final result = await client.forgetPassword(
  request: ForgetPasswordRequest(
    email: "user@example.com",
  ),
);

// Reset password with token
final resetResult = await client.resetPassword(
  request: ResetPasswordRequest(
    token: "reset_token_from_email",
    password: "newPassword123",
  ),
);
```

### Delete User Account

```dart
final result = await client.deleteUser(
  request: DeleteUserRequest(
    password: "currentPassword", // Usually required for confirmation
  ),
);
```

## Social Account Management

> ⚠️ **Note**: Social account management features require idToken-based authentication. Ensure your social providers support OpenID Connect.

### Link Social Account

```dart
final result = await client.social.link(
  request: SocialLinkRequest(
    provider: SocialProvider.github,
    // Include OAuth tokens from GitHub authentication
  ),
);
```

### List Connected Accounts

```dart
final result = await client.social.listAccounts();

if (result.error == null) {
  for (final account in result.data!) {
    print("Connected: ${account.providerId}");
  }
}
```

### Unlink Social Account

```dart
final result = await client.social.unlink(
  request: SocialUnlinkRequest(
    provider: SocialProvider.github,
  ),
);
```

### Refresh Social Tokens

```dart
final result = await client.social.refreshToken(
  request: SocialTokenRequest(
    provider: SocialProvider.google,
  ),
);
```

## Data Models

### User Model

```dart
class User {
  String id;
  String name;
  String email;
  bool emailVerified;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool twoFactorEnabled;
  String? username;
  String? displayUsername;
  bool isAnonymous;
  String? phoneNumber;
  bool phoneNumberVerified;
  String? role;
  bool banned;
  String? banReason;
  DateTime? banExpires;
}
```

### Session Model

```dart
class Session {
  String id;
  String token;
  DateTime expiresAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? ipAddress;
  String? userAgent;
  String userId;
  String? impersonatedBy;
  String? activeOrganizationId;
}
```

### Account Model

```dart
class Account {
  String id;
  String providerId;       // e.g., "google", "github"
  String accountId;        // Provider's user ID
  String userId;           // Your app's user ID
  String? accessToken;
  String? refreshToken;
  String? idToken;
  DateTime? accessTokenExpiresAt;
  DateTime? refreshTokenExpiresAt;
  String? scope;
  String? password;        // For email/password accounts
  DateTime? createdAt;
  DateTime? updatedAt;
}
```

## Error Handling

The package uses a Result pattern for type-safe error handling:

```dart
final result = await client.signIn.email(request: request);

// Pattern matching approach
switch (result) {
  case Success(:final data):
    print("Success: ${data.user.name}");
  case Failure(:final error):
    print("Error: ${error.message}");
}

// Extension method approach
if (result.error != null) {
  print("Error: ${result.error!.message}");
  print("Code: ${result.error!.code}");
} else {
  print("Success: ${result.data!.user.name}");
}
```

### Common Error Codes

- `INVALID_CREDENTIALS` - Wrong email/password
- `USER_NOT_FOUND` - User doesn't exist  
- `EMAIL_ALREADY_EXISTS` - Email is taken
- `SESSION_EXPIRED` - Session is no longer valid
- `EMAIL_NOT_VERIFIED` - Email verification required
- `WEAK_PASSWORD` - Password doesn't meet requirements

## Advanced Configuration

### Custom Storage

Implement custom storage for cookies and session data:

```dart
class CustomStorage implements StorageInterface {
  @override
  Future<void> setCookies(String url, List<Cookie> cookies) async {
    // Your custom cookie storage logic
  }
  
  @override
  Future<List<Cookie>> getCookies(String url) async {
    // Your custom cookie retrieval logic
  }
}

await BetterAuthFlutter.initialize(
  url: "https://your-server.com/api/auth",
  storage: CustomStorage(),
);
```

### Custom Dio Client

Use your own configured Dio client:

```dart
final dio = Dio();
// Configure interceptors, timeouts, etc.

await BetterAuthFlutter.initialize(
  url: "https://your-server.com/api/auth", 
  dio: dio,
);
```

## Best Practices

### 1. Initialize Early
Always initialize Better Auth before using any authentication methods:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BetterAuthFlutter.initialize(url: "...");
  runApp(MyApp());
}
```

### 2. Handle Errors Gracefully
Always check for errors in API responses:

```dart
final result = await client.signIn.email(request: request);
if (result.error != null) {
  // Show user-friendly error message
  showErrorDialog(result.error!.message);
  return;
}
// Proceed with success case
```

### 3. Secure Social Authentication
When implementing social authentication, validate tokens properly and handle edge cases:

```dart
try {
  final googleUser = await GoogleSignIn().signIn();
  if (googleUser == null) return; // User cancelled
  
  final auth = await googleUser.authentication;
  if (auth.idToken == null) {
    throw Exception("Failed to get ID token");
  }
  
  // Proceed with Better Auth
} catch (e) {
  // Handle social provider errors
}
```

### 4. Session Management
Check session validity before performing authenticated operations:

```dart
final sessionResult = await client.getSession();
if (sessionResult.error != null) {
  // Redirect to login
  Navigator.pushReplacement(context, LoginRoute());
  return;
}
```

## Migration Guide

### From v0.0.6 to v0.0.7
- Update initialization call to use `BetterAuthFlutter.initialize()`
- Replace direct client instantiation with `BetterAuthFlutter.client`
- Update error handling to use the Result pattern

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

## Support

- 📖 [Documentation](https://www.better-auth.com/docs)
- 🐛 [Issue Tracker](https://github.com/ekakshjanweja/better_auth_flutter/issues)
- 💬 [Discussions](https://github.com/ekakshjanweja/better_auth_flutter/discussions)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

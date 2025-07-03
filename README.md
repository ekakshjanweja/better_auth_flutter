# Better Auth Flutter

A Flutter package that provides seamless integration with Better Auth for authentication in Flutter applications.

## Critical Fixes Applied

This implementation has been thoroughly analyzed and fixed to address several critical issues:

### 1. **Session Handling Issues Fixed**
- **Problem**: Authentication methods only extracted user data but ignored session data from Better Auth responses
- **Fix**: All authentication methods now properly extract and store both user and session data
- **Impact**: Complete authentication state is now maintained after login/signup

### 2. **Synchronous Constructor Problems Fixed**
- **Problem**: `BetterAuthClient` constructor attempted synchronous operations on async storage
- **Fix**: Removed synchronous constructor logic and implemented proper async `init()` method
- **Impact**: No more timing issues with cached session loading

### 3. **Session Refresh Logic Fixed**
- **Problem**: Session refresh was reactive (after expiration) instead of proactive
- **Fix**: Changed to proactive refresh (5 minutes before expiration) 
- **Impact**: Sessions now refresh automatically before expiring

### 4. **Client State Management Fixed**
- **Problem**: Authentication operations didn't update client instance state
- **Fix**: All auth methods now properly update both storage and client state
- **Impact**: Client state is always synchronized with authentication status

### 5. **Async Initialization Fixed**
- **Problem**: No proper async initialization pattern for loading cached data
- **Fix**: Added comprehensive async `init()` method with error handling
- **Impact**: Reliable client initialization with cached authentication data

### 6. **Account Model Properties Fixed**
- **Problem**: Example code referenced non-existent properties (`providerId`, `accountId`)
- **Fix**: Updated to use correct properties (`provider`, `id`)
- **Impact**: Account listing now works correctly

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  better_auth_flutter: ^latest_version
```

## Usage

### 1. Initialize Better Auth

**Important**: Always call `await BetterAuth.init()` before using any authentication methods.

```dart
import 'package:better_auth_flutter/better_auth_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    await BetterAuth.init(
      baseUrl: Uri.parse("https://your-better-auth-server.com"),
    );
    print("BetterAuth initialized successfully");
  } catch (e) {
    print("Failed to initialize BetterAuth: $e");
  }
  
  runApp(MyApp());
}
```

### 2. Sign Up with Email and Password

```dart
try {
  final (result, error) = await BetterAuth.instance.client
      .signUpWithEmailAndPassword(
        email: "user@example.com",
        password: "securePassword123",
        name: "John Doe",
      );

  if (error != null) {
    print("Signup error: ${error.message}");
    return;
  }

  print("Signup successful: $result");
  
  // Check if user was automatically signed in
  if (BetterAuth.instance.client.user != null) {
    print("User auto-signed in: ${BetterAuth.instance.client.user!.name}");
  }
} catch (e) {
  print("Signup exception: $e");
}
```

### 3. Sign In with Email and Password

```dart
try {
  final (user, error) = await BetterAuth.instance.client
      .signInWithEmailAndPassword(
        email: "user@example.com",
        password: "securePassword123",
      );

  if (error != null) {
    print("Signin error: ${error.message}");
    return;
  }

  print("Signin successful: ${user?.name}");
  
  // Client state is automatically updated
  print("Client user: ${BetterAuth.instance.client.user?.name}");
  print("Session valid: ${BetterAuth.instance.client.session != null}");
} catch (e) {
  print("Signin exception: $e");
}
```

### 4. Get Current Session

```dart
try {
  final (sessionData, error) = await BetterAuth.instance.client.getSession();
  
  if (error != null) {
    print("Get session error: ${error.message}");
    return;
  }

  if (sessionData != null) {
    final (session, user) = sessionData;
    print("User: ${user?.name}");
    print("Session expires: ${session?.expiresAt}");
  } else {
    print("No active session found");
  }
} catch (e) {
  print("Get session exception: $e");
}
```

### 5. Sign Out

```dart
try {
  final error = await BetterAuth.instance.client.signOut();

  if (error != null) {
    print("Signout error: ${error.message}");
    return;
  }

  print("Signed out successfully");
  
  // Client state is automatically cleared
  print("User after signout: ${BetterAuth.instance.client.user}"); // null
  print("Session after signout: ${BetterAuth.instance.client.session}"); // null
} catch (e) {
  print("Signout exception: $e");
}
```

### 6. List User Accounts

```dart
try {
  final (accounts, error) = await BetterAuth.instance.client.listAccounts();

  if (error != null) {
    print("List accounts error: ${error.message}");
    return;
  }

  if (accounts == null || accounts.isEmpty) {
    print("No accounts found");
    return;
  }

  print("Found ${accounts.length} accounts:");
  for (Account account in accounts) {
    print("Account: ${account.provider} - ${account.id}");
  }
} catch (e) {
  print("List accounts exception: $e");
}
```

### 7. Social Sign-In with Google

```dart
try {
  final (user, error) = await BetterAuth.instance.client.signInWithIdToken(
    provider: SocialProvider.google,
    idToken: "google_id_token",
    accessToken: "google_access_token",
  );

  if (error != null) {
    print("Google signin error: ${error.message}");
    return;
  }

  print("Google signin successful: ${user?.name}");
} catch (e) {
  print("Google signin exception: $e");
}
```

## Key Features

### Automatic Session Management
- Sessions are automatically refreshed 5 minutes before expiration
- Session state is persisted across app restarts
- Invalid cached sessions are automatically cleared

### State Synchronization
- Client state is automatically updated after all authentication operations
- Local storage and memory state are kept in sync
- Real-time session validation

### Error Handling
- Comprehensive error types for different failure scenarios
- Graceful handling of network errors and invalid data
- Detailed error messages for debugging

### Caching
- User and session data are automatically cached
- Cached data is validated on app startup
- Invalid cache entries are automatically cleaned up

## Best Practices

### 1. Always Initialize First
```dart
// ✅ Good
await BetterAuth.init(baseUrl: Uri.parse("https://your-server.com"));
final user = BetterAuth.instance.client.user;

// ❌ Bad - will throw exception
final user = BetterAuth.instance.client.user; // Exception: not initialized
```

### 2. Handle Errors Properly
```dart
// ✅ Good
try {
  final (user, error) = await BetterAuth.instance.client.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
  
  if (error != null) {
    // Handle specific error
    switch (error.code) {
      case BetterAuthError.invalidEmailOrPassword:
        showMessage("Invalid credentials");
        break;
      case BetterAuthError.userNotFound:
        showMessage("User not found");
        break;
      default:
        showMessage("An error occurred: ${error.message}");
    }
    return;
  }
  
  // Success - user is now signed in
  navigateToHome();
} catch (e) {
  showMessage("Unexpected error: $e");
}
```

### 3. Check Client State
```dart
// Check if user is signed in
if (BetterAuth.instance.client.user != null) {
  // User is signed in
  final userName = BetterAuth.instance.client.user!.name;
  print("Welcome back, $userName!");
}

// Check if session is valid
if (BetterAuth.instance.client.session != null) {
  final expiresAt = BetterAuth.instance.client.session!.expiresAt;
  if (expiresAt.isAfter(DateTime.now())) {
    print("Session is valid until $expiresAt");
  }
}
```

## Troubleshooting

### Issue: "BetterAuth not initialized" Exception
**Solution**: Make sure to call `await BetterAuth.init()` before accessing the client:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BetterAuth.init(baseUrl: Uri.parse("https://your-server.com"));
  runApp(MyApp());
}
```

### Issue: Client State Not Updated After Authentication
**Solution**: This is now fixed in the current implementation. Client state is automatically updated after all authentication operations.

### Issue: Session Expires Unexpectedly
**Solution**: The implementation now includes proactive session refresh. Sessions are automatically refreshed 5 minutes before expiration.

### Issue: Cached Data Causing Issues
**Solution**: Invalid cached data is now automatically detected and cleared. If you need to manually clear cache:

```dart
await BetterAuth.instance.client.signOut(); // Clears all cached data
```

## Error Types

The package provides comprehensive error types for different scenarios:

- `BetterAuthError.invalidEmailOrPassword` - Invalid login credentials
- `BetterAuthError.userNotFound` - User doesn't exist
- `BetterAuthError.userAlreadyExists` - User already registered
- `BetterAuthError.sessionExpired` - Session has expired
- `BetterAuthError.emailNotVerified` - Email verification required
- `BetterAuthError.invalidToken` - Invalid authentication token
- And many more...

## Contributing

Please feel free to contribute to this package by submitting issues or pull requests.

## License

This project is licensed under the MIT License.

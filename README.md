# better_auth_flutter

Flutter client SDK for [Better Auth](https://www.better-auth.com) — email/password and social sign-in, session management, reactive auth state, and persistent cookie sessions.

Suggestions or contributions welcome — reach out at [@ekaksh_janweja](https://x.com/ekaksh_janweja).

## Features

- Email/password and username sign-up, sign-in, sign-out
- Social sign-in via ID token (Google, Apple) or web redirect
- Password reset, email verification, account linking
- Session listing and revocation
- Reactive auth state: `authStateChanges`, `onAuthChange`, `BetterAuthBuilder`
- Persistent cookie sessions that survive restarts
- Every call returns a sealed `Result<T>` — no thrown exceptions
- Plugins: admin, bearer, email OTP, JWT, phone

## Install

```yaml
dependencies:
  better_auth_flutter: ^0.1.0
```

## Getting started

Initialize before `runApp`:

```dart
import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter/material.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await BetterAuthFlutter.initialize(
    url: "http://localhost:3000/api/auth", // your Better Auth base URL
    enableLogging: kDebugMode,
  );

  runApp(const MyApp());
}
```

| Parameter | Default | Purpose |
| --- | --- | --- |
| `url` | — | Better Auth base URL (usually `…/api/auth`) |
| `dio` | new `Dio` | Supply your own configured Dio |
| `store` | `HiveStorage` | Custom `StorageInterface` for cookie persistence |
| `enableLogging` | `false` | Internal diagnostics. Never logs cookies or headers |
| `hydrateOnInit` | `true` | Look up the stored session in the background on startup |

## Results

Every API call returns a sealed `Result<T>` — nothing throws, including network
failures and malformed server responses.

```dart
final result = await BetterAuthFlutter.client.signInEmail(
  email: "user@example.com",
  password: "hunter2",
);

switch (result) {
  case Success(:final data):
    print("Welcome ${data.user?.name}");
  case Failure(:final error):
    print("${error.code}: ${error.message}");
}
```

> `user` is nullable: with two-factor enabled, a successful sign-in returns
> `twoFactorRedirect: true` and no user until the second factor is verified via
> the [two_factor plugin](#plugins).

`BetterError` carries Better Auth's own code (`USER_NOT_FOUND`,
`INVALID_EMAIL_OR_PASSWORD`, …) verbatim. When a request fails without a
structured response, it carries a transport code from `BetterErrorCodes`
instead:

```dart
if (result case Failure(:final error)) {
  if (error.isNetworkError) return showRetry();
  if (error.isUnauthorized) return goToSignIn();
  showMessage(error.message);
}
```

## Reactive auth state

Gate your app on auth state instead of polling:

```dart
BetterAuthProvider(
  child: MaterialApp(
    home: BetterAuthBuilder(
      authenticated: (context, user) => HomeScreen(user: user),
      unauthenticated: (context) => const SignInScreen(),
    ),
  ),
)
```

`BetterAuthBuilder` shows a loading indicator while the stored session is being
looked up, so the sign-in screen never flashes on a cold start. Override it with
`loading:`, and handle failed lookups with `error:` (a failed lookup usually
means the network was unreachable — the session may still be valid, which is why
it is not the same as being signed out).

For finer control, listen to the stream. It replays the current state to every
new listener, so subscribing late still tells you where things stand:

```dart
BetterAuthFlutter.authStateChanges.listen((state) {
  switch (state) {
    case AuthInitial() || AuthLoading(): showSplash();
    case Authenticated(:final user):    goHome(user);
    case Unauthenticated():             goToSignIn();
    case AuthError(:final error):       showRetry(error);
  }
});
```

Or `BetterAuthFlutter.onAuthChange` for a plain `Stream<User?>`. Read the state
synchronously with `BetterAuthFlutter.authState`, and refresh it on demand with
`BetterAuthFlutter.refreshSession()`.

Auth state updates automatically on sign-in, sign-up, sign-out, session refresh,
and session expiry (any `401`).

## Authentication

### Email and password

```dart
final client = BetterAuthFlutter.client;

await client.signUpEmail(
  name: "Ada Lovelace",
  email: "ada@example.com",
  password: "hunter2",
);

await client.signInEmail(email: "ada@example.com", password: "hunter2");

await client.signOut();
await BetterAuthFlutter.clearCookies(); // clears the persisted session too
```

### Social sign-in

#### ID token (recommended for Google and Apple)

Obtain the ID token with the provider's own SDK, then hand it to Better Auth:

```dart
// Using google_sign_in
final googleUser = await GoogleSignIn(serverClientId: "…").signIn();
final auth = await googleUser!.authentication;

await BetterAuthFlutter.client.signInSocial(
  body: {
    "provider": "google",
    "idToken": {"token": auth.idToken},
  },
);
```

#### Web redirect

Other providers require a browser redirect. `signInSocial` returns a `url` to
open; you handle the redirect and callback yourself, for example with
[flutter_web_auth_2](https://pub.dev/packages/flutter_web_auth_2).

> **Note:** the browser used for a redirect flow (`ASWebAuthenticationSession`,
> Chrome Custom Tabs) keeps its own cookie store, so a session cookie set during
> the redirect does not reach this package's cookie jar. Redirect-based social
> sign-in therefore needs a token handoff rather than a plain cookie flow.
> Native ID-token sign-in has no such issue.

### Sessions

```dart
await client.getSession();
await client.listSessions();
await client.revokeSession(...);
await client.revokeOtherSessions();
```

`BetterAuthFlutter.refreshSession()` re-fetches the session and updates auth
state. `BetterAuthProvider` calls it automatically when the app returns to the
foreground (pass `refreshOnResume: false` to opt out). If your server runs
`deferSessionRefresh`, the required follow-up POST is handled transparently.

## Bearer authentication

By default the SDK uses session cookies. For backends that cannot rely on
cookies, switch to bearer mode — the token is captured from the `set-auth-token`
response header after sign-in and sent as `Authorization: Bearer <token>`.
Requires the `bearer()` plugin on your server.

```dart
await BetterAuthFlutter.initialize(
  url: "https://example.com/api/auth",
  mode: AuthMode.bearer,
  // Optional: persist the token across restarts (in-memory by default).
  tokenStorage: MySecureTokenStorage(),
);
```

> With the default `InMemoryTokenStorage`, bearer sessions do **not** survive an
> app restart. Supply a `TokenStorage<String>` backed by secure storage to
> persist them. Keep `BearerOptions.requireSignature` in sync with your server's
> `bearer({ requireSignature })` — a mismatch produces bare 401s.

## Plugins

Plugins live in their own libraries, so you only pay for what you import. Each
requires the matching plugin enabled on your Better Auth server.

```dart
import "package:better_auth_flutter/plugins/jwt.dart";

final token = await BetterAuthFlutter.client.jwt.token();
```

| Library | Getter | Server plugin |
| --- | --- | --- |
| `plugins/admin.dart` | `client.admin` | `admin()` |
| `plugins/email_otp.dart` | `client.emailOtp` | `emailOTP()` |
| `plugins/jwt.dart` | `client.jwt` | `jwt()` |
| `plugins/phone.dart` | `client.phone` | `phoneNumber()` |
| `plugins/two_factor.dart` | `client.twoFactor` | `twoFactor()` |
| `plugins/anonymous.dart` | `client.anonymous` | `anonymous()` |
| `plugins/bearer.dart` | — | `bearer()` |

## Storage

Session cookies persist through a `StorageInterface`. `SecureStorage`
(keychain/keystore, via `flutter_secure_storage`) is the default on native
platforms — session cookies are credentials, so they are encrypted at rest and
chunked to fit iOS keychain limits.

`HiveStorage` and `SharedPreferencesStorage` are also bundled (both
**unencrypted**) for cases where the secure backend is inconvenient — for
example desktop platforms, where `flutter_secure_storage` needs native
dependencies such as `libsecret`:

```dart
await BetterAuthFlutter.initialize(url: "…", store: SharedPreferencesStorage());
```

Or implement `StorageInterface` yourself:

```dart
class MyStorage implements StorageInterface {
  @override
  Future<void> saveCookies(String url, List<Cookie> cookies) async { … }

  @override
  Future<List<Cookie>> loadCookies(String url) async { … }

  @override
  Future<void> deleteCookies(String url) async { … }

  @override
  Future<void> deleteAll() async { … }
}

await BetterAuthFlutter.initialize(url: "…", store: MyStorage());
```

### Sharing the session with your own HTTP client

See [docs/cookie-sharing.md](docs/cookie-sharing.md).

```dart
final headers = await BetterAuthFlutter.getAuthHeaders();
final response = await http.get(myUrl, headers: headers);
```

## Calling your own backend with a JWT

The JWT plugin mints a short-lived token for your own services. Unlike Better
Auth's rolling sessions, that token has a real expiry — which makes it the one
place a refresh-on-401 interceptor such as
[fresh_dio](https://pub.dev/packages/fresh_dio) genuinely fits:

```dart
import "package:fresh_dio/fresh_dio.dart";

myBackendDio.interceptors.add(
  Fresh.oAuth2(
    tokenStorage: InMemoryTokenStorage<OAuth2Token>(),
    refreshToken: (_, _) async {
      final result = await BetterAuthFlutter.client.jwt.token();
      return switch (result) {
        Success(:final data) => OAuth2Token(accessToken: data.token),
        Failure() => throw RevokeTokenException(),
      };
    },
  ),
);
```

Use this for **your** API, not for Better Auth itself. Better Auth has no
OAuth2 refresh grant — its sessions are rolling (`expiresIn` / `updateAge`) and
the server extends them on access, so this package needs no refresh machinery.

## Platform setup

Android, iOS, macOS, Windows, and Linux are supported. Web is not currently
supported.

## Contributing

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter test
```

`vigilant-spoon` (a git submodule) is a runnable Better Auth server for local
testing.

## License

MIT

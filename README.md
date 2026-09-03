# better_auth_flutter

Flutter client SDK for [Better Auth](https://www.better-auth.com) — email/password and social sign-in, session management, reactive auth state, and persistent cookie sessions.

Suggestions or contributions welcome — reach out at [@ekaksh_janweja](https://x.com/ekaksh_janweja).

## Features

- Email/password and username sign-up, sign-in, sign-out
- Social sign-in via ID token (Google, Apple) or web redirect
- Password reset, email verification, account linking
- Session listing and revocation
- Reactive auth state: `authStateChanges`, `onAuthChange`, `BetterAuthBuilder`,
  Riverpod 3 providers
- Persistent cookie sessions that survive restarts
- Every call returns a sealed `Result<T>` — no thrown exceptions
- Encrypted session storage by default (keychain/keystore)
- Plugins: admin, anonymous, api key, bearer, email OTP, JWT, magic link,
  multi-session, one-time token, organization, passkey, phone, two-factor

## Install

```yaml
dependencies:
  better_auth_flutter: ^0.1.1
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
| `store` | `SecureStorage` | Custom `StorageInterface` for cookie persistence |
| `enableLogging` | `false` | Internal diagnostics. Never logs cookies or headers |
| `hydrateOnInit` | `true` | Look up the stored session in the background on startup |
| `mode` | `AuthMode.cookie` | Cookie or bearer authentication |
| `callbackUrlScheme` | `null` | Custom URL scheme for browser-redirect social sign-in |

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

For the common "grab the value or bail" shape, `ResultX` adds `.data` and
`.error` getters (null for the other branch) — prefer exhaustive `switch`
matching when both branches need handling:

```dart
final user = (await client.getSession()).data?.user;
if (user == null) return goToSignIn();
```

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

### Riverpod 3

Prefer Riverpod? Import the opt-in `riverpod.dart` library alongside the main
one and watch the providers inside a `ProviderScope`:

```dart
import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:better_auth_flutter/riverpod.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BetterAuthFlutter.initialize(url: "https://example.com/api/auth");
  runApp(const ProviderScope(child: MyApp()));
}

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(betterAuthStateProvider);

    return auth.when(
      data: (state) => switch (state) {
        AuthInitial() || AuthLoading() => const SplashScreen(),
        Authenticated(:final user) => HomeScreen(user: user),
        Unauthenticated() => const SignInScreen(),
        AuthError(:final error) => RetryScreen(error: error),
      },
      loading: () => const SplashScreen(),
      error: (error, _) => RetryScreen(error: error),
    );
  }
}
```

Four providers, one subscription under the hood:

- `betterAuthStateProvider` (`StreamProvider<AuthState>`) — mirrors
  `authStateChanges`, including the immediate replay of the current state.
- `betterAuthClientProvider` — the API client. Requires `initialize()` first,
  like `BetterAuthFlutter.client`.
- `currentUserProvider` — the signed-in `User`, or null while the stored
  session is still loading or when signed out.
- `isAuthenticatedProvider` — true only for `Authenticated`.

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

With the `username()` server plugin, sign in with a username instead, and
check availability before sign-up:

```dart
await client.signInUsername(username: "ada", password: "hunter2");

final free = await client.isUsernameAvailable(username: "ada");
if (free.data?.available == true) print("username is free");
```

### Additional fields

Better Auth lets you add custom columns to the `user` and `session` tables.
The server merges them as flat top-level keys into the JSON, so this client
collects every key the static models don't own into an `additionalFields` map
rather than dropping it:

```dart
final session = await client.getSession();
final user = session.data?.user;

user?.additionalFields["firstName"];      // dynamic
user?.field<String>("firstName");         // typed, or null if absent
user?.field<String>("role") ?? "user";    // with a default
```

To *write* custom fields, flat-merge them as top-level keys through the raw
variants (Better Auth's wire format):

```dart
await client.signUpEmailRaw({
  "name": "Ada Lovelace",
  "email": "ada@example.com",
  "password": "hunter2",
  "firstName": "Ada",
});

await client.updateUserRaw({"firstName": "Ada", "lang": "fr"});
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

Other providers use a browser redirect. Pass `callbackUrlScheme` to
`initialize`, register the matching scheme in your platform config (see below),
then:

```dart
final result = await BetterAuthFlutter.signInWithProvider(
  provider: SocialProvider.github,
);

if (result case Success(:final data) when data.token != null) {
  // Exchange the one-time token for a session in this package's jar.
  await BetterAuthFlutter.client.oneTimeToken.verify(
    body: {"token": data.token},
  );
  await BetterAuthFlutter.refreshSession();
}
```

> **The cookie caveat.** The system browser (`ASWebAuthenticationSession`,
> Chrome Custom Tabs) keeps its own cookie store, so a session cookie set during
> the redirect does **not** reach this package's Dio jar. A plain cookie flow
> can't pick the session up afterward. The reliable path is the token handoff
> above: point `callbackURL` at a server route that mints a one-time token and
> redirects to `<scheme>://callback?token=…`; `signInWithProvider` returns that
> token. Native ID-token sign-in (Google/Apple) has no such issue.

On web, the browser owns cookies and navigation, so two helpers apply:
`enableWebCredentials(BetterAuthFlutter.dioClient)` makes the browser
attach/store cookies for cross-origin requests in cookie mode, and
`redirectToUrl(url)` / `currentOrigin()` drive the full-page OAuth redirect
(no-ops on native).

### Sessions

```dart
await client.getSession();
await client.listSessions();
await client.revokeSession(...);
await client.revokeOtherSessions();
```

`BetterAuthFlutter.refreshSession()` re-fetches the session and updates auth
state. `BetterAuthProvider` calls it automatically when the app returns to the
foreground (pass `refreshOnResume: false` to opt out) and when the device
regains connectivity (pass `refreshOnReconnect: false` to opt out; skipped on
web, where the browser owns connectivity). If your server runs
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
| `plugins/magic_link.dart` | `client.magicLink` | `magicLink()` |
| `plugins/api_key.dart` | `client.apiKey` | `apiKey()` |
| `plugins/organization.dart` | `client.organization` | `organization()` |
| `plugins/multi_session.dart` | `client.multiSession` | `multiSession()` |
| `plugins/one_time_token.dart` | `client.oneTimeToken` | `oneTimeToken()` |
| `plugins/passkey.dart` | `client.passkey` | `passkey()` |
| `plugins/bearer.dart` | — | `bearer()` |

### Passkey (WebAuthn)

Register and authenticate with platform credentials instead of passwords.
Combine with [`passkeys`](https://pub.dev/packages/passkeys) or platform Web
APIs for the ceremony itself — the plugin handles the server legs:

```dart
import "package:better_auth_flutter/plugins/passkey.dart";

final passkey = BetterAuthFlutter.client.passkey;

// Registration: options → WebAuthn create → verify.
final options = await passkey.generateRegistrationOptions(name: "ada");
final credential = await createWebAuthnCredential(options);
await passkey.verifyRegistration({"response": credential, "name": "ada"});

// Authentication: options → WebAuthn get → verify (sets the session).
final authOptions = await passkey.generateAuthenticationOptions();
final assertion = await getWebAuthnAssertion(authOptions);
await passkey.verifyAuthentication({"response": assertion});
await BetterAuthFlutter.refreshSession();
```

Manage existing passkeys with `listUserPasskeys()`, `updatePasskey(id:name:)`,
and `deletePasskey(id:)`.

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

See [doc/cookie-sharing.md](doc/cookie-sharing.md).

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

Browser-redirect social sign-in (`signInWithProvider`) uses
[flutter_web_auth_2](https://pub.dev/packages/flutter_web_auth_2), which needs a
callback activity registered for your scheme in
`android/app/src/main/AndroidManifest.xml`:

```xml
<activity
    android:name="com.linusu.flutter_web_auth_2.CallbackActivity"
    android:exported="true">
  <intent-filter android:label="flutter_web_auth_2">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="YOUR_SCHEME" />
  </intent-filter>
</activity>
```

The scheme must match `callbackUrlScheme` in `initialize`. The native ID-token
flow needs none of this.

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

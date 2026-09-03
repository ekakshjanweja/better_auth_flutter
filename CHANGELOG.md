# Changelog

## 0.1.1

### Added

* **Riverpod 3 support** via the opt-in `package:better_auth_flutter/riverpod.dart`
  library (backed by `flutter_riverpod: ^3.0.0`): `betterAuthStateProvider`
  (`StreamProvider<AuthState>`, mirroring `authStateChanges` with its immediate
  replay), `betterAuthClientProvider`, `currentUserProvider`, and
  `isAuthenticatedProvider`. Importing it is optional — apps that do not use
  Riverpod pay nothing for it.
* **All dependencies upgraded to their latest versions**: `flutter_riverpod`
  3.x, `flutter_secure_storage` 11.x, `freezed` 4.x (generated code
  regenerated), `build_runner`, `retrofit_generator`, `json_annotation`.
  This raises the minimum toolchain to Dart `^3.13.0` / Flutter `>=3.47.0`.
* **Passkey (WebAuthn) plugin** (`package:better_auth_flutter/plugins/passkey.dart`,
  `client.passkey`): registration/authentication options + verification,
  passkey listing, rename, and deletion, with typed `PasskeyRecord` models.
* **Custom user & session fields.** `User`/`Session` collect unknown server
  keys into `additionalFields` instead of dropping them, with a typed
  `field<T>()` accessor; the raw sign-up/sign-in/update variants
  (`signUpEmailRaw`, `signInEmailRaw`, `signInUsernameRaw`, `updateUserRaw`)
  accept flat-merged custom keys for writing.
* **Username availability** (`isUsernameAvailable`), **password verification**
  (`verifyPassword`), and **`Result.data`/`Result.error` getters** (`ResultX`).
* **Refresh on reconnect.** `BetterAuthProvider` re-fetches the session when
  the device regains connectivity (`refreshOnReconnect: false` to opt out).
* **Web helpers**: `enableWebCredentials` (browser cookie handling for
  cross-origin requests), `redirectToUrl`, and `currentOrigin`.

### Fixed

* **Authenticated writes no longer fail with 403 `MISSING_OR_NULL_ORIGIN`.**
  Better Auth rejects any cookie-bearing non-GET request that arrives without an
  `Origin` header, and it reads only that standard header — the `flutter-origin`
  header this package sends is for the Expo-style proxy and is not consulted by
  the origin check. Native HTTP clients never set `Origin` on their own, so
  every mutating call made with a session cookie (`update-user`, `delete-user`,
  `change-password`, …) was refused, while sign-in kept working because it
  carries no cookie yet. `initialize` now derives `Origin` from the `url` you
  pass it. Better Auth always trusts its own `baseURL` origin, so this needs no
  `trustedOrigins` change on the server. Skipped on web, where the browser owns
  the header; a caller-supplied `dio` keeps its own value if it sets one.

## 0.1.0

Security fixes, a reachable public API, reactive auth state, and working bearer
mode.

**This release is breaking.** Every breaking change is bundled here so you
migrate once. See the migration table at the end.

### Added

* **Bearer authentication that actually works.**
  `initialize(mode: AuthMode.bearer)` captures the token from the
  `set-auth-token` response header and sends it as `Authorization: Bearer`.
  Previously nothing read that header, so bearer mode could not obtain a token
  at all. `TokenStorage<String>` (default `InMemoryTokenStorage`) controls
  persistence, and `BearerOptions.requireSignature` is now honored.
* **Session refresh.** `BetterAuthFlutter.refreshSession()` (single-flight),
  automatic refresh on app resume via `BetterAuthProvider` (throttled;
  `refreshOnResume: false` to opt out), and transparent `deferSessionRefresh`
  handling (`SessionResponse.needsRefresh` → follow-up POST).
* **`SecureStorage`**, backed by `flutter_secure_storage` with iOS keychain
  chunking — now the default cookie store on native platforms. Hive and
  SharedPreferences remain available as opt-in backends.
* **Typed social sign-in.** `SocialProvider` enum and `SignInSocialBody`;
  `signInSocial` now takes the typed body, with `signInSocialRaw` for providers
  outside the enum (e.g. `genericOAuth`).
* **Browser-redirect social sign-in.** `initialize(callbackUrlScheme:)` and
  `BetterAuthFlutter.signInWithProvider(...)` drive the `flutter_web_auth_2`
  flow and return a parsed `SocialCallback` (with the one-time-token handoff for
  cookie-mode sessions). The dependency was declared but unused before.
* **New plugins:** `two_factor` (typed TOTP / OTP / backup codes),
  `anonymous`, `magic_link`, `api_key`, `organization`, `multi_session`, and
  `one_time_token`. `SignInEmailResponse` gained `twoFactorRedirect` (and `user`
  is now nullable) so callers can branch on a 2FA challenge.
* A runnable `example/` app (email/password, reactive gating, sign-out).


* **A barrel file.** `import "package:better_auth_flutter/better_auth_flutter.dart"`
  now resolves. It previously did not exist, so every snippet in the README and
  docs failed to compile and consumers had to deep-import implementation paths.
* **Reactive auth state.** `BetterAuthFlutter.authStateChanges`
  (`Stream<AuthState>`), `BetterAuthFlutter.onAuthChange` (`Stream<User?>`),
  and `BetterAuthFlutter.authState` for a synchronous read. State updates
  automatically on sign-in, sign-up, sign-out, session refresh, and any 401.
  The stream replays current state to new listeners, so subscribing late still
  reports where things stand.
* **`BetterAuthBuilder`** — a declarative auth gate with `authenticated` /
  `unauthenticated` / `loading` / `error` branches. `AuthInitial` is distinct
  from `Unauthenticated`, so the sign-in screen no longer flashes during cold
  start while the stored session loads.
* **`BetterAuthFlutter.refreshSession()`** and `initialize(hydrateOnInit:)` to
  look the stored session up on startup (in the background — it does not block
  `main()`).
* Per-plugin libraries: `package:better_auth_flutter/plugins/<name>.dart` for
  admin, bearer, email_otp, jwt, and phone. Admin and bearer previously had no
  barrel at all.
* `BetterError.statusCode`, plus `isUnauthorized` / `isNetworkError`. Failures
  could not previously be told apart by status.
* Transport-level error codes (`NETWORK_ERROR`, `TIMEOUT`, `CANCELLED`,
  `BAD_RESPONSE`, `UNAUTHORIZED`, `RATE_LIMITED`) for failures carrying no
  Better Auth error body. See `BetterErrorCodes`.
* `StorageInterface.deleteCookies(url)` / `deleteAll()`, and
  `BetterAuthFlutter.clearCookies()`.
* First test suite (70 tests) and CI.

### Security

* **Session cookies are no longer logged.** The API adapter logged full response
  headers — including `Set-Cookie` — on every failed request, in release builds.
  Internal logging is now off by default and never logs headers, cookies, or
  bodies. Opt in with `BetterAuthFlutter.initialize(enableLogging: kDebugMode)`.
* **`Secure` cookies are no longer sent over plain HTTP**, and expired cookies
  are no longer sent at all. `CustomPersistCookieJar.loadForRequest` returned
  cookies straight from the durable store without applying any scoping. (The
  underlying `cookie_jar` filter is also unreliable here, so the `secure` and
  expiry rules are now enforced directly.)

### Fixed

* **Users are no longer signed out on every cold start.** `HiveStorage` wrote
  cookie `expires` as a `DateTime` but read it back as an `int`, throwing on
  load. Every Better Auth session cookie carries an `Expires` attribute, so no
  persisted session survived a restart. Cookie serialization now lives in one
  shared, tested codec used by every storage backend, and tolerates rows written
  by previous versions instead of crashing.
* **API methods no longer throw.** The adapter did `response.data["code"]`,
  which throws on a non-Map body (an HTML error page from a proxy, for example)
  — from inside its own `catch`, so the exception escaped `Result` entirely.
  Non-Map, `List`, and null bodies now all produce a `Failure`.
* Sign-out now clears the durable cookie store as well as the in-memory jar, via
  the new `BetterAuthFlutter.clearCookies()`. Previously the store kept the
  session cookie indefinitely.
* Cookies persist correctly when no custom store is configured; previously this
  configuration returned no cookies at all.

### Changed

* Internals moved from `lib/source/` to `lib/src/`. Import the barrel instead.
* `BetterAuthConsumer`'s builder now receives the current `AuthState` as a third
  argument.
* `BetterAuthProvider` now subscribes to auth state, so descendants rebuild when
  the session changes.
* Plugin getters (`client.jwt`, `client.admin`, …) are cached per client instead
  of constructing a new HTTP client on every property access.

### Migration

| Before | After |
| --- | --- |
| `import "package:better_auth_flutter/source/core/api/client/better_auth_client.dart";` | `import "package:better_auth_flutter/better_auth_flutter.dart";` |
| deep `source/plugins/...` imports | `import "package:better_auth_flutter/plugins/jwt.dart";` |
| `BetterAuthConsumer(builder: (context, client) => …)` | `BetterAuthConsumer(builder: (context, client, state) => …)` |
| `StorageInterface` with 2 methods | 4 methods — add `deleteCookies` and `deleteAll` |
| default store `HiveStorage` (plaintext) | `SecureStorage` (keychain) — existing users sign in once after upgrade |
| `createDioWithBearer(...)` / `dio.useBearerAuth(...)` | `initialize(mode: AuthMode.bearer, tokenStorage: …)` |
| logging always on | off unless `initialize(enableLogging: true)` |
| polling `getSession()` for auth state | `authStateChanges` / `BetterAuthBuilder` |

Signing out should now also call `BetterAuthFlutter.clearCookies()` to clear the
persisted session.

Existing `StorageInterface` implementations must add the two new methods. If you
relied on cookies persisting across restarts, note that this never actually
worked with the default backend (see above) — users will sign in once after
upgrading.

## 0.0.1

* Initial Release

## 0.0.2

* Add custom uri for backend

## 0.0.3

* Minor fixes

## 0.0.4

* Add send verification email
* Add verify email
* Add list accounts

## 0.0.5

* Add Social Sign In With All Providers (Redirection to be handled, using something like flutter_web_auth_2)
* Added multiple social providers

## 0.0.6

* Minor fixes

## 0.0.7

* Delete user
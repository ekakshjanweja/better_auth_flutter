# better_auth_flutter example

A minimal app showing email/password sign-in, sign-up, reactive auth gating with
`BetterAuthBuilder`, and sign-out.

## Run

1. Start a Better Auth server. The bundled `vigilant-spoon` server (a git
   submodule at the repo root) works out of the box:

   ```bash
   cd ../vigilant-spoon
   bun install && bun run dev   # serves http://localhost:8000/api/auth
   ```

2. Adjust `kBaseUrl` in `lib/main.dart` if your server differs (Android
   emulators reach the host at `http://10.0.2.2:8000`).

3. Run the app:

   ```bash
   flutter run
   ```

The example registers the `betterauth` scheme on Android (`MainActivity`) and
iOS (`CFBundleURLTypes`) so `signInWithProvider` can return from the browser.

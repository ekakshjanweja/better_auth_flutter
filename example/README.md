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

## Social sign-in (Android)

Redirect-based social sign-in with `flutter_web_auth_2` needs a callback
activity in `android/app/src/main/AndroidManifest.xml`:

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

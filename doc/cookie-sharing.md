# Sharing Session Cookies With Your Own API Client

By default, Better Auth Flutter manages its session cookie inside its own Dio cookie jar. If your app has a separate HTTP client (e.g. a hand-rolled `Api` class on top of `package:http`), those requests need a way to:

1. **Send** the current session cookie on outgoing requests.
2. **Persist** any refreshed `Set-Cookie` the backend returns.

`BetterAuthFlutter` exposes two helpers for exactly this.

## 1. Attaching Cookies to Outgoing Requests

Use `getAuthHeaders` to get a ready-to-merge headers map containing the `Cookie` header.

```dart
import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:http/http.dart' as http;

final uri = Uri.parse('https://api.example.com/v1/profile');
final authHeaders = await BetterAuthFlutter.getAuthHeaders(uri: uri);

final response = await http.get(uri, headers: {
  'Content-Type': 'application/json',
  ...authHeaders,
});
```

If you need the raw `Cookie` objects instead (e.g. to inspect expiry), use `getCookies({Uri? uri})`.

> Passing `uri` matters — the cookie jar enforces host/path/secure scoping, so a cookie set on `api.example.com` won't leak to another host.

## 2. Persisting Refreshed Cookies

When your backend rotates the session cookie on an arbitrary endpoint (e.g. `/profile`), `package:http` ignores `Set-Cookie` by default. Call `saveCookiesFromResponse` after each response to keep Better Auth's jar in sync.

```dart
await BetterAuthFlutter.saveCookiesFromResponse(
  uri,
  response.headersSplitValues['set-cookie'] ?? const [],
);
```

> Use `response.headersSplitValues['set-cookie']`, **not** `response.headers['set-cookie']`. `package:http` joins multiple `Set-Cookie` headers with commas in `.headers`, which corrupts cookie parsing.

## 3. Full `Api` Class Example

```dart
import 'dart:convert';
import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:http/http.dart' as http;

class Api {
  static final hc = http.Client();

  static Future<(dynamic, Object?)> sendRequest(
    String path, {
    required String method,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    bool authenticated = true,
  }) async {
    headers ??= {};
    final uri = Uri.parse('https://api.example.com$path');

    if (authenticated) {
      final cookieHeaders = await BetterAuthFlutter.getAuthHeaders(uri: uri);
      cookieHeaders.forEach((k, v) => headers!.putIfAbsent(k, () => v));
    }
    headers['Content-Type'] = 'application/json';

    final http.Response response;
    switch (method) {
      case 'GET':
        response = await hc.get(uri, headers: headers);
        break;
      case 'POST':
        response = await hc.post(uri, headers: headers, body: jsonEncode(body));
        break;
      default:
        throw UnsupportedError(method);
    }

    // Persist rotated/refreshed cookies (run for every response).
    await BetterAuthFlutter.saveCookiesFromResponse(
      uri,
      response.headersSplitValues['set-cookie'] ?? const [],
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return (response.body.isEmpty ? null : jsonDecode(response.body), null);
    }
    return (null, response.statusCode);
  }
}
```

## API Reference

| Method | Description |
| --- | --- |
| `BetterAuthFlutter.getCookies({Uri? uri})` | Returns `List<Cookie>` scoped to `uri` (defaults to `baseUrl`). |
| `BetterAuthFlutter.getAuthHeaders({Uri? uri})` | Returns `{ "cookie": "name=value; ..." }`, or an empty map. |
| `BetterAuthFlutter.saveCookiesFromResponse(uri, setCookieHeaders)` | Parses raw `Set-Cookie` values and persists them in the shared jar. |

All three require `BetterAuthFlutter.initialize(...)` to have been called first.

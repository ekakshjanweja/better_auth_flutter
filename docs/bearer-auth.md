# Bearer Token Authentication

The Bearer plugin enables authentication using Bearer tokens as an alternative to browser cookies. It intercepts Dio requests, adding the Bearer token to the Authorization header before forwarding them to your API.

## Installation

Add the Bearer plugin to your Better Auth server:

```ts title="auth.ts"
import { betterAuth } from "better-auth";
import { bearer } from "better-auth/plugins";

export const auth = betterAuth({
    plugins: [bearer()]
});
```

## Flutter Setup

### 1. Obtain the Bearer Token

After a successful sign-in, you'll receive a session token in the response headers. Store this token securely:

```dart
import 'package:better_auth_flutter/source/core/api/client/better_auth_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

final client = BetterAuthClient(dio, baseUrl: 'https://api.example.com');
final result = await client.signInEmail(
  email: 'user@example.com',
  password: 'securepassword',
);

if (result.isOk) {
  // Get token from response headers
  final token = result.value; // Check your response model for header access
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('bearer_token', token);
}
```

### 2. Configure the Auth Client with Bearer

Set up your Dio client to include the Bearer token in all requests:

```dart
import 'package:better_auth_flutter/source/plugins/bearer/bearer.dart';
import 'package:better_auth_flutter/source/plugins/bearer/bearer_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:better_auth_flutter/source/core/api/client/better_auth_client.dart';

Future<void> setupAuth() async {
  final prefs = await SharedPreferences.getInstance();
  
  final dio = createDioWithBearer(
    getToken: () => prefs.getString('bearer_token') ?? '',
    baseUrl: 'https://api.example.com',
    options: BearerOptions(requireSignature: false),
  );
  
  final client = BetterAuthClient(dio, baseUrl: 'https://api.example.com');
}
```

### 3. Token Refresh Strategy

For token refresh, you have two options:

**Option A: Manual Refresh**

```dart
import 'package:dio/dio.dart';
import 'package:better_auth_flutter/source/core/api/client/better_auth_client.dart';
import 'package:better_auth_flutter/source/plugins/bearer/bearer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthManager {
  late BetterAuthClient _client;
  final _prefs = SharedPreferences.getInstance();
  
  AuthManager() {
    _client = BetterAuthClient(
      createDioWithBearer(
        getToken: () async => 
            (await _prefs).getString('bearer_token') ?? '',
        baseUrl: 'https://api.example.com',
      ),
      baseUrl: 'https://api.example.com',
    );
  }
  
  Future<void> refreshToken() async {
    final result = await _client.refreshToken(/* params */);
    if (result.isOk) {
      final newToken = result.value; // Extract new token
      await (await _prefs).setString('bearer_token', newToken);
    }
  }
}
```

**Option B: Auto-refresh with Dio Interceptor**

```dart
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenRefreshInterceptor extends Interceptor {
  final Future<String?> Function() getToken;
  final Future<void> Function() refreshToken;
  
  TokenRefreshInterceptor({
    required this.getToken,
    required this.refreshToken,
  });
  
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await refreshToken();
      // Retry the request
      final token = await getToken();
      err.requestOptions.headers['Authorization'] = 'Bearer $token';
      final opts = Options(
        method: err.requestOptions.method,
        headers: err.requestOptions.headers,
      );
      // Re-attempt request
      // handler.resolve(response);
    } else {
      handler.next(err);
    }
  }
}
```

### 4. Make Authenticated Requests

Now you can make authenticated API calls:

```dart
final result = await client.listSessions();
// Request is automatically authenticated with Bearer token
```

### 5. Per-Request Token (Optional)

You can also provide a token for individual requests:

```dart
final result = await client.listSessions(
  // Custom options can override the default Bearer token
);
```

## Using with Any HTTP Client

The `BearerAuthHelper` provides a simple way to get auth headers for manual use:

```dart
import 'package:better_auth_flutter/source/plugins/bearer/bearer_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

Future<void> makeAuthenticatedRequest() async {
  final prefs = await SharedPreferences.getInstance();
  
  final bearer = BearerAuthHelper(
    getToken: () => prefs.getString('bearer_token') ?? '',
  );
  
  // Use with http package
  final response = await http.get(
    Uri.parse('https://api.example.com/data'),
    headers: bearer.authHeaders,
  );
  
  // Or add to any Dio instance
  final dio = Dio();
  dio.addBearerAuth(() => prefs.getString('bearer_token') ?? '');
  
  // After adding interceptor, all requests are auto-authenticated
  final dioResponse = await dio.get('https://api.example.com/data');
}
```

## Complete Example

```dart
import 'package:dio/dio.dart';
import 'package:better_auth_flutter/source/plugins/bearer/bearer.dart';
import 'package:better_auth_flutter/source/plugins/bearer/bearer_options.dart';
import 'package:better_auth_flutter/source/core/api/client/better_auth_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  late BetterAuthClient _client;
  late Dio _dio;
  late SharedPreferences _prefs;
  
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    
    _dio = createDioWithBearer(
      getToken: () => _prefs.getString('bearer_token') ?? '',
      baseUrl: 'https://api.example.com',
    );
    
    _client = BetterAuthClient(_dio, baseUrl: 'https://api.example.com');
  }
  
  Future<void> signIn(String email, String password) async {
    final result = await _client.signInEmail(
      email: email,
      password: password,
    );
    
    if (result.isOk) {
      // Store token - adjust based on actual response structure
      final token = result.value;
      await _prefs.setString('bearer_token', token);
    }
  }
  
  Future<void> signOut() async {
    await _client.signOut();
    await _prefs.remove('bearer_token');
  }
  
  BetterAuthClient get client => _client;
}
```

Then use in your Flutter app:

```dart
@override
Widget build(BuildContext context) {
  return BetterAuthProvider(
    client: authService.client,
    child: MyHomePage(),
  );
}
```
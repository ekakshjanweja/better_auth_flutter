/// Flutter client SDK for [Better Auth](https://www.better-auth.com).
///
/// Initialize once, then use [BetterAuthFlutter.client]:
///
/// ```dart
/// await BetterAuthFlutter.initialize(url: "https://example.com/api/auth");
///
/// final result = await BetterAuthFlutter.client.signInEmail(
///   email: "user@example.com",
///   password: "hunter2",
/// );
///
/// switch (result) {
///   case Success(:final data):
///     print("Hi ${data.user.name}");
///   case Failure(:final error):
///     print("${error.code}: ${error.message}");
/// }
/// ```
///
/// Plugins live in their own libraries so you only pay for what you import —
/// see `package:better_auth_flutter/plugins/<name>.dart`.
library;

// Entry point.
export "src/core/better_auth_flutter.dart" show BetterAuthFlutter;
export "src/core/api/client/better_auth_client.dart" show BetterAuthClient;

// Result and errors.
export "src/core/api/models/result/result/result.dart"
    show Result, Success, Failure;
export "src/core/api/models/result/better_error/better_error.dart"
    show BetterError, BetterErrorCodes;
export "src/core/api/models/result/status_response/status_response.dart"
    show StatusResponse;
export "src/core/api/models/result/success_response/success_response.dart"
    show SuccessResponse;

// Reactive auth state.
export "src/core/auth/auth_state.dart"
    show
        AuthState,
        AuthInitial,
        AuthLoading,
        Authenticated,
        Unauthenticated,
        AuthError;

// Domain models.
export "src/core/models/user/user.dart" show User;
export "src/core/models/session/session.dart" show Session;
export "src/core/models/account/account.dart" show Account;
export "src/core/models/verification/verification.dart" show Verification;

// Responses for the default (non-plugin) routes.
export "src/core/api/default/sign_up/sign_up_response.dart" show SignUpResponse;
export "src/core/api/default/sign_in/models/email/sign_in_email_response.dart"
    show SignInEmailResponse;
export "src/core/api/default/sign_in/models/social/response/social_sign_in_response.dart"
    show SignInSocialResponse;
export "src/core/api/default/sign_in/models/social/id_token/social_id_token_body.dart"
    show SocialIdTokenBody;
export "src/core/api/models/session/session_response.dart" show SessionResponse;
export "src/core/api/models/common/sign_out/sign_out_response.dart"
    show SignOutResponse;
export "src/core/api/models/common/verify_email/verify_email_response.dart"
    show VerifyEmailResponse;

// Storage: the contract plus the backends we ship.
export "src/core/storage/storage.dart" show StorageInterface;
export "src/core/storage/hive_storage.dart" show HiveStorage;
export "src/core/storage/shared_preferences_storage.dart"
    show SharedPreferencesStorage;

// Widgets.
export "src/presentation/better_auth_provider.dart" show BetterAuthProvider;
export "src/presentation/better_auth_consumer.dart" show BetterAuthConsumer;
export "src/presentation/better_auth_builder.dart" show BetterAuthBuilder;

// Deliberately NOT exported — these are implementation details, and exporting
// them would freeze them into the public API:
//   BetterAuthCallAdapter, RemoveNullsInterceptor, CustomPersistCookieJar,
//   MemoryStorage, CookieCodec, BetterAuthLog, BetterAuthInherit.

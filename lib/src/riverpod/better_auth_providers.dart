import "package:better_auth_flutter/src/core/api/client/better_auth_client.dart";
import "package:better_auth_flutter/src/core/auth/auth_state.dart";
import "package:better_auth_flutter/src/core/better_auth_flutter.dart";
import "package:better_auth_flutter/src/core/models/user/user.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

/// The current [AuthState], mirroring `BetterAuthFlutter.authStateChanges`.
///
/// The SDK stream replays the current state to every new listener, so this
/// provider emits immediately on first watch — there is no waiting for the
/// next transition. Use it to gate your app:
///
/// ```dart
/// class AuthGate extends ConsumerWidget {
///   const AuthGate({super.key});
///
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     final auth = ref.watch(betterAuthStateProvider);
///
///     return auth.when(
///       data: (state) => switch (state) {
///         AuthInitial() || AuthLoading() => const SplashScreen(),
///         Authenticated(:final user) => HomeScreen(user: user),
///         Unauthenticated() => const SignInScreen(),
///         AuthError(:final error) => RetryScreen(error: error),
///       },
///       loading: () => const SplashScreen(),
///       error: (error, _) => RetryScreen(error: error),
///     );
///   }
/// }
/// ```
///
/// For the common cases, [currentUserProvider] and [isAuthenticatedProvider]
/// read straight through this provider, so there is still only one
/// subscription to the SDK stream.
final StreamProvider<AuthState> betterAuthStateProvider =
    StreamProvider<AuthState>((ref) => BetterAuthFlutter.authStateChanges);

/// The API client. Requires `BetterAuthFlutter.initialize()` to have run.
///
/// ```dart
/// final result = await ref.read(betterAuthClientProvider).signInEmail(
///   email: email,
///   password: password,
/// );
/// ```
final Provider<BetterAuthClient> betterAuthClientProvider =
    Provider<BetterAuthClient>((ref) => BetterAuthFlutter.client);

/// The signed-in [User], or null when signed out — or while the stored
/// session is still loading.
///
/// A convenience view over [betterAuthStateProvider] with the same collapse
/// semantics as `BetterAuthFlutter.onAuthChange`: "still loading" and "signed
/// out" both read as null. Watch [betterAuthStateProvider] directly when you
/// need to tell those apart (so the sign-in screen does not flash on cold
/// start while the session loads).
final Provider<User?> currentUserProvider = Provider<User?>(
  (ref) => ref.watch(betterAuthStateProvider).value?.user,
);

/// Whether there is a confirmed session.
///
/// Reads through [betterAuthStateProvider]: true only for [Authenticated],
/// false while resolving, signed out, or on a failed lookup.
final Provider<bool> isAuthenticatedProvider = Provider<bool>(
  (ref) => ref.watch(betterAuthStateProvider).value?.isAuthenticated ?? false,
);

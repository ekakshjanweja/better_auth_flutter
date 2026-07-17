import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter/material.dart";

/// Shown while authenticated. Signing out flips auth state, and the root
/// `BetterAuthBuilder` swaps back to the sign-in screen.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.user});

  final User user;

  Future<void> _signOut() async {
    await BetterAuthFlutter.client.signOut();
    // Clear the persisted session too, so it isn't rehydrated next launch.
    await BetterAuthFlutter.clearCookies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signed in"),
        actions: [
          IconButton(
            onPressed: _signOut,
            icon: const Icon(Icons.logout),
            tooltip: "Sign out",
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              child: Text(
                user.name.isNotEmpty ? user.name[0].toUpperCase() : "?",
                style: const TextStyle(fontSize: 32),
              ),
            ),
            const SizedBox(height: 16),
            Text(user.name, style: Theme.of(context).textTheme.headlineSmall),
            Text(user.email, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 8),
            Text(
              user.emailVerified ? "Email verified" : "Email not verified",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: BetterAuthFlutter.refreshSession,
              icon: const Icon(Icons.refresh),
              label: const Text("Refresh session"),
            ),
          ],
        ),
      ),
    );
  }
}

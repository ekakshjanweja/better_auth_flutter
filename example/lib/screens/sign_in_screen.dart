import "package:better_auth_flutter/better_auth_flutter.dart";
import "package:flutter/material.dart";

/// Email/password sign-in and sign-up.
///
/// There is no manual navigation on success: updating auth state causes
/// `BetterAuthBuilder` at the root to swap in the home screen.
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _email = TextEditingController(text: "user@example.com");
  final _password = TextEditingController(text: "password123");
  final _name = TextEditingController(text: "Ada Lovelace");

  bool _signUp = false;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });

    final client = BetterAuthFlutter.client;
    final result = _signUp
        ? await client.signUpEmail(
            name: _name.text,
            email: _email.text,
            password: _password.text,
          )
        : await client.signInEmail(
            email: _email.text,
            password: _password.text,
          );

    if (!mounted) return;
    setState(() {
      _busy = false;
      if (result case Failure(:final error)) _error = error.message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_signUp ? "Sign up" : "Sign in")),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(24),
            children: [
              if (_signUp)
                TextField(
                  controller: _name,
                  decoration: const InputDecoration(labelText: "Name"),
                ),
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Password"),
              ),
              const SizedBox(height: 16),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    _error!,
                    style: TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              FilledButton(
                onPressed: _busy ? null : _submit,
                child: _busy
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(_signUp ? "Create account" : "Sign in"),
              ),
              TextButton(
                onPressed: _busy
                    ? null
                    : () => setState(() => _signUp = !_signUp),
                child: Text(
                  _signUp
                      ? "Have an account? Sign in"
                      : "Need an account? Sign up",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

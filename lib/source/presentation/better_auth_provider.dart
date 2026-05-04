import "package:better_auth_flutter/source/core/better_auth_flutter.dart";
import "package:better_auth_flutter/source/presentation/better_auth_inherit.dart";
import "package:flutter/material.dart";

class BetterAuthProvider extends StatefulWidget {
  final Widget child;

  const BetterAuthProvider({super.key, required this.child});

  @override
  State<BetterAuthProvider> createState() => _BetterAuthProviderState();
}

class _BetterAuthProviderState extends State<BetterAuthProvider> {
  @override
  Widget build(BuildContext context) {
    return BetterAuthInherit(
      client: BetterAuthFlutter.client,
      child: Builder(
        builder: (context) {
          return widget.child;
        },
      ),
    );
  }
}

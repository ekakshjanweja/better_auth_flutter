import 'package:better_auth_flutter/better_auth_flutter.dart';
import 'package:better_auth_flutter/src/modules/presentation/better_auth_inherit.dart';
import 'package:flutter/material.dart';

class BetterAuthConsumer extends StatefulWidget {
  final Widget Function(BuildContext context, BetterAuthClient client) builder;

  const BetterAuthConsumer({super.key, required this.builder});

  @override
  State<BetterAuthConsumer> createState() => _BetterAuthConsumerState();
}

class _BetterAuthConsumerState extends State<BetterAuthConsumer> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, BetterAuthInherit.of(context));
  }
}

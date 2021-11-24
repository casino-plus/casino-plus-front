import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Splash extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: const Text('from this Splash to Home'),
      ),
    );
  }
}

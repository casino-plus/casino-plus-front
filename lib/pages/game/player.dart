import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Player extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 50,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.brown,
      ),
      child: const Text('P'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PutBox extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Image.asset('assets/images/board-put-box.png'),
          Image.asset('assets/images/card-back.png'),
        ],
      ),
    );
  }
}

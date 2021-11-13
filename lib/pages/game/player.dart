import '../../types/api_models.dart' as model;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Player extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 50,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.brown,
      ),
      child: Text('P'),
    );
  }
}

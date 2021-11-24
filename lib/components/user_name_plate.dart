import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserNamePlate extends HookConsumerWidget {
  final String name;
  const UserNamePlate(this.name);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.00),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/chip.png'),
          Text(name),
        ],
      ),
    );
  }
}

import 'package:casino_plus/poker_plus/bet_controller.dart';
import 'package:casino_plus/types/card_id.dart';

import '../../components/card.dart' as card;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Header extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(betController).onTapExit();
            },
            child: Text('Exit'),
          )
        ],
      ),
    );
  }
}

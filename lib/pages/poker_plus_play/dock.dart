import 'package:casino_plus/types/card_id.dart';

import '../../components/card.dart' as card;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dock extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 60,
      child: Row(
        children: const [
          card.Card(CardId.back),
          card.Card(CardId.back),
          card.Card(CardId.back),
        ],
      ),
    );
  }
}

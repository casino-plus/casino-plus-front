import '../../components/game_card.dart';
import '../../types/api_models.dart' as model;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dock extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      child: Row(
        children: [
          GameCard(),
          GameCard(),
          GameCard(),
        ],
      ),
    );
  }
}

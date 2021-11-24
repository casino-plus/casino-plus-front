import '../../components/game_card.dart';
<<<<<<< HEAD
=======
import '../../types/api_models.dart' as model;
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dock extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
<<<<<<< HEAD
    return SizedBox(
=======
    return Container(
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
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

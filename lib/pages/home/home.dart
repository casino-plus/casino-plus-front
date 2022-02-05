import 'package:casino_plus/pages/game_list/game_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../components/bottom_tab_page.dart';
import '../profile/profile.dart';
import '../slot/slot.dart';

class Home extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomTabPage(
      [
        Item('Profile', const Icon(Icons.person), () => Profile()),
        Item(
            'GameList', const Icon(Icons.play_arrow_rounded), () => GameList()),
        Item('SlotList', const Icon(Icons.computer), () => Slot()),
      ],
    );
  }
}

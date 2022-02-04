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
        Item('Profile', Icon(Icons.person), () => Profile()),
        Item('Slot', Icon(Icons.computer), () => Slot()),
      ],
    );
  }
}

import 'package:casino_plus/config/home_tab_config.dart';
import 'package:casino_plus/pages/game_list/game_list.dart';
import 'package:casino_plus/pages/slot_list/slot_list.dart';
import 'package:casino_plus/router/tab_state.dart';
import 'package:casino_plus/router/tab_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'tab_bar.dart';
import '../profile/profile.dart';

class Home extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeTabState);

    return Scaffold(
      body: TabWindow(state),
      bottomNavigationBar: HomeTabBar(state: state, config: homeTabConfig),
    );
  }
}

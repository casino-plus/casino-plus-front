import '../../components/user_name_plate.dart';
import '../../state/login_user.dart' as login_user_state;
import '../../components/chip_counter.dart';
import 'left_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Profile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('プロフィール画面がビルドされました');
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      drawer: ProviderScope(
        child: LeftDrawer(),
      ),
      body: Column(
        children: [
          Container(
            width: 300,
            height: 60,
            child: UserNamePlate(
                ref.watch(login_user_state.provider).loginUser.nickname),
          ),
          Container(
            width: 300,
            height: 60,
            child: ChipCounter(
                ref.watch(login_user_state.provider).loginUser.chip),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/game');
            },
            child: Image.asset('assets/images/game-lazypoker-3d.png'),
          ),
        ],
      ),
    );
  }
}

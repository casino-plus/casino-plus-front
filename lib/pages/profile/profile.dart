import '../../components/user_name_plate.dart';
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
        title: const Text('Profile'),
      ),
      drawer: ProviderScope(
        child: LeftDrawer(),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: 300,
            height: 60,
            child: UserNamePlate('name'),
          ),
          const SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(50),
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

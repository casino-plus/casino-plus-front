import '../../components/user_name_plate.dart';
<<<<<<< HEAD
=======
import '../../state/login_user.dart' as login_user_state;
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
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
<<<<<<< HEAD
            child: UserNamePlate('name'),
=======
            child: UserNamePlate(
                ref.watch(login_user_state.provider).loginUser.nickname),
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
          ),
          const SizedBox(
            width: 300,
            height: 60,
<<<<<<< HEAD
            child: ChipCounter(50),
=======
            child: ChipCounter(
                ref.watch(login_user_state.provider).loginUser.chip),
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
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

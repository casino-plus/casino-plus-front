import 'package:casino_plus/components/simple_text.dart';
import 'package:casino_plus/components/url_image.dart';
import 'package:casino_plus/components/user_icon.dart';
import 'package:casino_plus/state/account.dart';

import '../../components/chip_counter.dart';
import '../menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Profile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountState);
    debugPrint('プロフィール画面がビルドされました');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      endDrawer: Menu(),
      body: Column(
        children: [
          UserIcon(account.loginUser!.iconUrl),
          SizedBox(
            width: 300,
            height: 60,
            child: SimpleText(account.loginUser!.nickname, size: 30),
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(account.loginUser!.chips),
          ),
        ],
      ),
    );
  }
}

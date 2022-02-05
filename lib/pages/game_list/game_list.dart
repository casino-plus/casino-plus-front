import 'package:casino_plus/components/chip_counter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ゲーム一覧画面がビルドされました');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameList'),
        automaticallyImplyLeading: false, // 戻るボタン非表示
      ),
      body: Column(
        children: [
          const SizedBox(
            width: 300,
            height: 60,
            child: Text('Rubydog'),
          ),
          const SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(500),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/poker-plus-play');
            },
            child: Image.asset('assets/images/game-poker-plus.png'),
          ),
        ],
      ),
    );
  }
}

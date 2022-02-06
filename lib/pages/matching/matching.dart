//
//
//

import 'package:casino_plus/controllers/poker_plus_matching_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Matching extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('マッチング画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('マッチング画面で一度だけ実行します');
        ref.read(pokerPlusMatchingController).onMatchingAppear();
      });
    }, const []);

    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.blue,
            child: DrawerHeader(child: Text('Poker+')),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: Text('プレイヤー'),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: Text('プレイヤー'),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: Text('プレイヤー'),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: Text('プレイヤー'),
          ),
        ],
      ),
      backgroundColor: Colors.red,
    );
  }
}

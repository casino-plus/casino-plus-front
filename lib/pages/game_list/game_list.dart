import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/components/chip_counter.dart';
import 'package:casino_plus/components/simple_text.dart';
import 'package:casino_plus/config/image_names.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:casino_plus/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ゲーム一覧画面がビルドされました');
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(500),
          ),
          const SizedBox(
            width: 300,
            height: 60,
            child: SimpleText('ポーカー+'),
          ),
          const SizedBox(
            width: 400,
            height: 200,
            child: LocalImage(ImageNames.gamePokerPlus),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(router).setBaseNavi([PageId.matching]);
            },
            child: const Text('Play'),
          ),
        ],
      ),
    );
  }
}

import '../../components/chip_counter.dart';
import '../menu/menu.dart';
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
        child: Menu(),
      ),
      body: Column(
        children: const [
          SizedBox(
            width: 300,
            height: 60,
            child: Text('Rubydog'),
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(500),
          ),
        ],
      ),
    );
  }
}

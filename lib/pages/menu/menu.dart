import '../../components/navigation_drawer.dart';
import '../developer_message/developer_message.dart';
import '../license/license.dart';
import '../terms_of_service/terms_of_service.dart';
import '../debug/debug.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Menu extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationDrawer(
      color: const Color(0xFF006400),
      items: [
        Item(
          '開発者より',
          buildBody: () => DeveloperMessage(),
        ),
        Item(
          'ライセンス',
          buildBody: () => License(),
        ),
        Item(
          '利用規約',
          buildBody: () => TermsOfService(),
        ),
        Item(
          'Debug',
          buildBody: () => Debug(),
        ),
      ],
    );
  }
}

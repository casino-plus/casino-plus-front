import '../../components/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../debug/debug.dart';

class Menu extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationDrawer(
      [
        Item(
          'Debug',
          buildBody: () => ProviderScope(
            child: Debug(),
          ),
        ),
      ],
    );
  }
}

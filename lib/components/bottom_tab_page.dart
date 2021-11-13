import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TabSwitcher extends StateNotifier<int> {
  TabSwitcher() : super(0);
  void switchTab({required int index}) {
    state = index;
  }
}

final provider = StateNotifierProvider<TabSwitcher, int>(
  (reference) => TabSwitcher(),
);

class BottomTabPage extends HookConsumerWidget {
  final List<Item> items;
  BottomTabPage(this.items);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(child: TabBar(items));
  }
}

class TabBar extends HookConsumerWidget {
  final List<Item> items;
  TabBar(this.items);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(provider);
    final barItems = items.map(
      (item) => BottomNavigationBarItem(icon: item.icon, label: item.label),
    );
    return Scaffold(
      body: items[index].buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: barItems.toList(),
        currentIndex: index,
        onTap: (tappedIndex) {
          final switcher = ref.read(provider.notifier);
          switcher.switchTab(index: tappedIndex);
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class Item {
  final String label;
  final Icon icon;
  final Widget Function() buildBody;
  Item(this.label, this.icon, this.buildBody);
}

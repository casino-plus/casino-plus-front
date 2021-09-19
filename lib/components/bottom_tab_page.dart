import 'hook_widget.dart';

class TabSwitcher extends StateNotifier<int> {
  TabSwitcher() : super(0);
  void switchTab({required int index}) {
    state = index;
  }
}

final provider = StateNotifierProvider<TabSwitcher, int>(
  (reference) => TabSwitcher(),
);

class BottomTabPage extends HookWidget {
  final List<Item> items;
  BottomTabPage(this.items);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: TabBar(items));
  }
}

class TabBar extends HookWidget {
  final List<Item> items;
  TabBar(this.items);

  @override
  Widget build(BuildContext context) {
    final index = useProvider(provider);
    final barItems = items.map(
      (item) => BottomNavigationBarItem(icon: item.icon, label: item.label),
    );
    return Scaffold(
      body: items[index].buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: barItems.toList(),
        currentIndex: index,
        onTap: (tappedIndex) {
          final switcher = context.read(provider.notifier);
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

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class BottomTabPage extends HookConsumerWidget {
  final List<Item> items;
  const BottomTabPage(this.items);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = useState(0);

    final barItems = items.map(
      (item) => BottomNavigationBarItem(icon: item.icon, label: item.label),
    );
    return Scaffold(
      body: items[index.value].buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: barItems.toList(),
        currentIndex: index.value,
        onTap: (tappedIndex) {
          index.value = tappedIndex;
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

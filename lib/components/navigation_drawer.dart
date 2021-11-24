import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavigationDrawer extends HookConsumerWidget {
  final List<Item> items;
  const NavigationDrawer(this.items);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tiles = items.map((item) => item.buildListTile(context));
    return Drawer(child: Column(children: tiles.toList()));
  }
}

class Item {
  String title;
  Widget Function() buildBody;
  Item(this.title, {required this.buildBody});
  MaterialPageRoute buildPageRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(appBar: AppBar(title: Text(title)), body: buildBody());
    });
  }

  ListTile buildListTile(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.push(context, buildPageRoute()),
    );
  }
}

import 'package:casino_plus/components/simple_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavigationDrawer extends HookConsumerWidget {
  final Color color;
  final List<Item> items;
  const NavigationDrawer({
    required this.color,
    required this.items,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tiles = items.map((item) => item.buildListTile(context));
    return Drawer(
      child: Container(
        color: color,
        child: ListView(
          children: <Widget>[
                Container(
                  height: 200.0,
                  color: Color(0xFF006400),
                  child: const DrawerHeader(
                    child: SimpleText('Casino+', size: 30),
                  ),
                ),
              ] +
              tiles.toList(),
        ),
      ),
    );
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

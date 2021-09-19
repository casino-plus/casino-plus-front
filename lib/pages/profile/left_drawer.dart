import '../../components/navigation_drawer.dart';
import '../../components/hook_widget.dart';
import '../debug/debug.dart';

class LeftDrawer extends HookWidget {
  @override
  Widget build(BuildContext context) {
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

import '../../components/user_name_plate.dart';
import '../../store/store.dart';
import '../../store/app_state.dart';
import '../../components/chip_counter.dart';
import 'left_drawer.dart';
import '../../components/hook_widget.dart';

class Profile extends HookWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('プロフィール画面がビルドされました');
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      drawer: ProviderScope(
        child: LeftDrawer(),
      ),
      body: Column(
        children: [
          Container(
            width: 300,
            height: 60,
            child: UserNamePlate(store2.state.loginUser.nickname),
          ),
          Container(
            width: 300,
            height: 60,
            child: ChipCounter(store.state.loginUser.chip),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/game');
            },
            child: Image.asset('assets/images/game-lazypoker-3d.png'),
          ),
        ],
      ),
    );
  }
}

import 'player.dart';
import 'dock.dart';
import 'board.dart';
import '../../store/store.dart';
import '../../types/api_models.dart' as Model;
import '../../components/hook_widget.dart';

class Game extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Player(),
                  Player(),
                ],
              ),
              Container(
                width: 300,
                height: 500,
                child: Board(),
              ),
              Column(
                children: [
                  Player(),
                  Player(),
                ],
              ),
            ],
          ),
          Container(
            width: 300,
            height: 60,
            child: Dock(),
          ),
        ],
      ),
    );
  }
}

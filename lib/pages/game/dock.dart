import '../../components/game_card.dart';
import '../../types/api_models.dart' as model;
import '../../components/hook_widget.dart';

class Dock extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          GameCard(),
          GameCard(),
          GameCard(),
        ],
      ),
    );
  }
}

import '../../types/api_models.dart' as model;
import '../../components/hook_widget.dart';

class Player extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.brown,
      ),
      child: Text('P'),
    );
  }
}

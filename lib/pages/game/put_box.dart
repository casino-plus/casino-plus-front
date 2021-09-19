import '../../types/api_models.dart' as model;
import '../../components/hook_widget.dart';

class PutBox extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Image.asset('assets/images/board-put-box.png'),
          Image.asset('assets/images/card-back.png'),
        ],
      ),
    );
  }
}

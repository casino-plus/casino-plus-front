import '../store/store.dart';
import 'hook_widget.dart';

class UserNamePlate extends HookWidget {
  final name;
  UserNamePlate(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.00),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/chip.png'),
          Text(name),
        ],
      ),
    );
  }
}

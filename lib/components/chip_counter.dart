import 'hook_widget.dart';

class ChipCounter extends HookWidget {
  final int chipCount;
  ChipCounter(this.chipCount);

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
          Text(chipCount.toString()),
        ],
      ),
    );
  }
}

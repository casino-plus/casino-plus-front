import '../../components/hook_widget.dart';

class Debug extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text('Debug'),
    );
  }
}

void onPressed() {
  debugPrint('this is debug...');
}

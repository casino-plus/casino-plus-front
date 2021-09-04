import '../../components/hook_widget.dart';

class Splash extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Text('from this Splash to Home'),
      ),
    );
  }
}

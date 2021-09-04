import '../../components/hook_widget.dart';

Widget Profile() {
  final context = useContext();
  return Scaffold(
    body: TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/roulette-poker');
      },
      child: Text('from this Profile to RoulettePoker'),
    ),
  );
}

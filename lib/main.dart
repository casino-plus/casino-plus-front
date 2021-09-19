import 'components/hook_widget.dart';
import 'components/bottom_tab_page.dart';
import 'config/color_theme.dart';
import 'pages/splash/splash.dart';
import 'pages/profile/profile.dart';
import 'pages/slot/slot.dart';
import 'pages/game/game.dart';

void main() => runApp(CasinoPlusApp());

class CasinoPlusApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Casino+',
      theme: colorTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/home': (context) => BottomTabPage(
              [
                Item('Profile', Icon(Icons.person), () => Profile()),
                Item('Slot', Icon(Icons.computer), () => Slot()),
              ],
            ),
        '/game': (context) => Game(),
      },
    );
  }
}

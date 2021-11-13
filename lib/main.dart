import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'components/bottom_tab_page.dart';
import 'config/color_theme.dart';
import 'pages/splash/splash.dart';
import 'pages/profile/profile.dart';
import 'pages/slot/slot.dart';
import 'pages/game/game.dart';

void main() {
  runApp(
    ProviderScope(
      child: CasinoPlusApp(),
    ),
  );
}

class CasinoPlusApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

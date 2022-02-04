import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'config/color_theme.dart';
import 'pages/splash/splash.dart';
import 'pages/home/home.dart';
import 'pages/poker_plus_play/play.dart';
import 'config/flavor.dart';

void main() {
  debugPrint('FLAVOR: $flavor');
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
        '/home': (context) => Home(),
        '/play': (context) => Play(),
      },
    );
  }
}

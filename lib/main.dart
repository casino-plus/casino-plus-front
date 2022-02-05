import 'package:casino_plus/router/page_content.dart';
import 'package:casino_plus/router/navi_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'config/color_theme.dart';
import 'pages/splash/splash.dart';
import 'pages/home/home.dart';
import 'pages/poker_plus_play/play.dart';
import 'config/flavor.dart';
import 'router/navi_state.dart';

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
    final naviState = ref.watch(baseNaviState);

    return MaterialApp(
      title: 'Casino+',
      theme: colorTheme(),
      debugShowCheckedModeBanner: false,
      home: NaviWindow(state: naviState),
    );
  }
}

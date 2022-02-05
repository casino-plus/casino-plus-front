import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../controllers/splash_controller.dart';

class Splash extends HookConsumerWidget {
  const Splash();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('スプラッシュ画面が表示されました');

    // スプラッシュ画面表示を呼び出す
    ref.read(splashController).onSplashAppear(context);

    return Scaffold(
      backgroundColor: const Color(0xFF555555),
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}

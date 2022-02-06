import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/config/image_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../controllers/splash_controller.dart';

class Splash extends HookConsumerWidget {
  const Splash();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('スプラッシュ画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('スプラッシュ画面で一度だけ実行します');
        // スプラッシュ画面表示を呼び出す
        ref.read(splashController).onSplashAppear();
      });
    }, const []);

    return const Scaffold(
      backgroundColor: Color(0xFF555555),
      body: Center(
        child: LocalImage(ImageNames.splash),
      ),
    );
  }
}

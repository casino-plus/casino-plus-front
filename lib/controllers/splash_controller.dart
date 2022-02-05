//
//
//

import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../router/router.dart';

class Controller {
  final Reader _read;
  Controller(this._read);

  onSplashAppear(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    debugPrint('スプラッシュ画面から移動します');
    _read(router).setBaseNavi([PageId.home]);
  }
}

final splashController = Provider.autoDispose((ref) => Controller(ref.read));

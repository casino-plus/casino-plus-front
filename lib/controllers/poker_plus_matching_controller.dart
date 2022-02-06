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

  onMatchingAppear() async {
    await Future.delayed(const Duration(seconds: 2));
    debugPrint('マッチング画面から移動します');
    _read(router).setBaseNavi([PageId.pokerPlusPlay]);
  }
}

final pokerPlusMatchingController =
    Provider.autoDispose((ref) => Controller(ref.read));

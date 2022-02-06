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

  onTapExit() async {
    debugPrint('確認せずに退出します');
    onTapExitYes();
  }

  onTapExitYes() async {
    _read(router).setBaseNavi([PageId.home]);
  }

  onTapExitNo() async {
    debugPrint('何も行いません');
  }
}

final betController = Provider.autoDispose((ref) => Controller(ref.read));

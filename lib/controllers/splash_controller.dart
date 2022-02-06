//
//
//

import 'package:casino_plus/router/page_id.dart';
import 'package:casino_plus/state/account.dart';
import 'package:casino_plus/types/user.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import '../router/router.dart';
import 'package:uuid/uuid.dart';

class Controller {
  final Reader _read;
  Controller(this._read);

  onSplashAppear() async {
    final newUserId = const Uuid().v4().toString();
    final newUser = User(
      id: newUserId,
      mail: 'test@sample.com',
      nickname: 'ゲスト',
      iconUrl: 'assets://icon-guest.png',
      chips: 500,
      symbolPockets: [],
      selfIntro: 'こんにちは',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final oldAccountState = _read(accountState);
    final newAccountState = AccountState(
      loginUser: newUser,
      logoutUserIds: oldAccountState.logoutUserIds,
      keycard: oldAccountState.keycard,
    );

    _read(accountState.notifier).update(newAccountState);

    // 2秒まつ
    await Future.delayed(const Duration(seconds: 2));

    debugPrint('スプラッシュ画面から移動します');
    _read(router).setBaseNavi([PageId.home]);
  }
}

final splashController = Provider.autoDispose((ref) => Controller(ref.read));

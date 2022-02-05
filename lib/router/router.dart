//
//
//

import 'package:casino_plus/router/navi_state.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class Router {
  final Reader _read;
  Router(this._read);

  pushBaseNavi(PageId id) {
    final oldState = _read(baseNaviState);
    var stack = <PageId>[...oldState.stack, id];
    final newState = NaviState(stack: stack);
    _read(baseNaviState.notifier).update(newState);
  }

  setBaseNavi(List<PageId> stack) {
    final newState = NaviState(stack: stack);
    _read(baseNaviState.notifier).update(newState);
  }

  push(BuildContext context, String route) async {
    Navigator.pushNamed(context, route);
  }
}

final router = Provider.autoDispose((ref) => Router(ref.read));

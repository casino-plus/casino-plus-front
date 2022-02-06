//
//
//

import 'package:casino_plus/router/navi_state.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:casino_plus/router/tab_state.dart';
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

  popBaseNavi() {
    final oldState = _read(baseNaviState);
    var stack = List.of(oldState.stack); // コピー
    stack.removeLast();
    final newState = NaviState(stack: stack);
    _read(baseNaviState.notifier).update(newState);
  }

  switchHomeTab(PageId id) {
    final newState = TabState(selectedId: id);
    _read(homeTabState.notifier).update(newState);
  }
}

final router = Provider.autoDispose((ref) => Router(ref.read));

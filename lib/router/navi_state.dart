import 'package:casino_plus/router/page_id.dart';
import 'package:riverpod/riverpod.dart';

class NaviState {
  final List<PageId> stack;

  const NaviState({
    required this.stack,
  });
}

/// バインド
class _Notifier extends StateNotifier<NaviState> {
  _Notifier(NaviState state) : super(state);
  update(NaviState state) {
    this.state = state;
  }
}

/// 公開
final naviState = StateNotifierProvider<_Notifier, NaviState>((ref) {
  // 初期化
  const initialState = NaviState(
    stack: [
      PageId.splash,
    ],
  );
  return _Notifier(initialState);
});

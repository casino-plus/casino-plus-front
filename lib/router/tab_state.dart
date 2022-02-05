import 'package:casino_plus/router/page_id.dart';
import 'package:riverpod/riverpod.dart';
import 'package:casino_plus/types/user.dart';
import 'package:casino_plus/types/keycard.dart';
import 'package:casino_plus/router/modal_id.dart';

class TabState {
  final PageId selectedId;

  const TabState({
    required this.selectedId,
  });
}

/// バインド
class Notifier extends StateNotifier<TabState> {
  Notifier(TabState state) : super(state);
  update(TabState state) {
    this.state = state;
  }
}

/// 公開
final homeTabState =
    StateNotifierProvider.autoDispose<Notifier, TabState>((ref) {
  // 初期化
  const initialState = TabState(
    selectedId: PageId.profile,
  );
  return Notifier(initialState);
});

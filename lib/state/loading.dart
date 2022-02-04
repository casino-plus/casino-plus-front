import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:casino_plus/types/loading_task.dart';

/// 構造
class _State {
  final List<LoadingTask> tasks;

  const _State({
    required this.tasks,
  });
}

/// バインド
class _Notifier extends StateNotifier<_State> {
  _Notifier(_State state) : super(state);
  update(_State state) {
    this.state = state;
  }
}

/// 公開
final loadingState =
    StateNotifierProvider.autoDispose<_Notifier, _State>((ref) {
  // 初期化
  const initialState = _State(
    tasks: [],
  );
  return _Notifier(initialState);
});

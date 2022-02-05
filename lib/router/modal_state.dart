import 'package:riverpod/riverpod.dart';
import 'package:casino_plus/types/user.dart';
import 'package:casino_plus/types/keycard.dart';
import 'package:casino_plus/router/modal_id.dart';

class ModalState {
  final List<ModalId> queue;

  const ModalState({
    required this.queue,
  });
}

/// バインド
class Notifier extends StateNotifier<ModalState> {
  Notifier(ModalState state) : super(state);
  update(ModalState state) {
    this.state = state;
  }
}

/// 公開
final baseModalState =
    StateNotifierProvider.autoDispose<Notifier, ModalState>((ref) {
  // 初期化
  const initialState = ModalState(
    queue: [],
  );
  return Notifier(initialState);
});

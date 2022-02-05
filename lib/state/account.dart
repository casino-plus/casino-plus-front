import 'package:riverpod/riverpod.dart';
import 'package:casino_plus/types/user.dart';
import 'package:casino_plus/types/keycard.dart';

/// 構造
class _State {
  final User? loginUser;
  final List<String> logoutUserIds;
  final Keycard? keycard;

  const _State({
    required this.loginUser,
    required this.logoutUserIds,
    required this.keycard,
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
final accountState =
    StateNotifierProvider.autoDispose<_Notifier, _State>((ref) {
  // 初期化
  const initialState = _State(
    loginUser: null,
    logoutUserIds: [],
    keycard: null,
  );
  return _Notifier(initialState);
});

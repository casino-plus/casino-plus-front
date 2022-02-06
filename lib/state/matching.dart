import 'package:casino_plus/types/player.dart';
import 'package:riverpod/riverpod.dart';

/// 構造
class MatchingState {
  final List<Player> players;

  const MatchingState({
    required this.players,
  });
}

/// バインド
class _Notifier extends StateNotifier<MatchingState> {
  _Notifier(MatchingState state) : super(state);
  update(MatchingState state) {
    this.state = state;
  }
}

/// 公開
final matchinState =
    StateNotifierProvider.autoDispose<_Notifier, MatchingState>((ref) {
  // 初期化
  const initialState = MatchingState(
    players: [],
  );
  return _Notifier(initialState);
});

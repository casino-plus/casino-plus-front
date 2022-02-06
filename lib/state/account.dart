import 'package:riverpod/riverpod.dart';
import 'package:casino_plus/types/user.dart';
import 'package:casino_plus/types/keycard.dart';

/// 構造
class AccountState {
  final User? loginUser;
  final List<String> logoutUserIds;
  final Keycard? keycard;

  const AccountState({
    required this.loginUser,
    required this.logoutUserIds,
    required this.keycard,
  });
}

/// バインド
class _Notifier extends StateNotifier<AccountState> {
  _Notifier(AccountState state) : super(state);
  update(AccountState state) {
    this.state = state;
  }
}

/// 公開
final accountState = StateNotifierProvider<_Notifier, AccountState>((ref) {
  // 初期化
  const initialState = AccountState(
    loginUser: null,
    logoutUserIds: [],
    keycard: null,
  );
  return _Notifier(initialState);
});

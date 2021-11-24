import 'package:riverpod/riverpod.dart';
import '../types/user.dart';

// ログインユーザー
class State {
  final User loginUser;

  State(this.loginUser);
}

class Notifier extends StateNotifier<State> {
  Notifier()
      : super(
          State(
            User(
              id: 0,
              name: 'Admin',
              iconURL: 'http://localhost:3000/uploaded/poke-1.png',
              selfIntro: 'Hello, Im an admin user',
            ),
          ),
        );

  void switchUser(User toUser) {
    state = State(toUser);
  }
}

final provider = StateNotifierProvider<Notifier, State>((ref) {
  return Notifier();
});

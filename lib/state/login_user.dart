<<<<<<< HEAD
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
=======
import '../types/api_models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class State {
  final User loginUser = User('http://guest', 'guest');
}

class Notifier extends StateNotifier<State> {
  Notifier() : super(State());

  void startLoading() {
    state = State();
  }

  void endLoading() {
    state = State();
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
  }
}

final provider = StateNotifierProvider<Notifier, State>((ref) {
  return Notifier();
});

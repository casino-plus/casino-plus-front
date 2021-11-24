<<<<<<< HEAD
import 'package:riverpod/riverpod.dart';

// ロード状態

class State {
  bool isLoading;

  State(this.isLoading);
}

class Notifier extends StateNotifier<State> {
  Notifier()
      : super(
          State(
            false,
          ),
        );

  void startLoading() {
    state = State(true);
  }

  void endLoading() {
    state = State(false);
=======
import 'package:hooks_riverpod/hooks_riverpod.dart';

class State {
  final bool isLoading = false;
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

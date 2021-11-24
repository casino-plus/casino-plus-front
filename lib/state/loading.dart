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
  }
}

final provider = StateNotifierProvider<Notifier, State>((ref) {
  return Notifier();
});

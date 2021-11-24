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
  }
}

final provider = StateNotifierProvider<Notifier, State>((ref) {
  return Notifier();
});

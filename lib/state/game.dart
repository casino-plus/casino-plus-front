import '../types/api_models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class State {
  final Game game = const Game(
    [],
    Board([], [], 0, 0),
    Dock([]),
  );
}

class Notifier extends StateNotifier<State> {
  Notifier() : super(State());
}

final provider = StateNotifierProvider<Notifier, State>((ref) {
  return Notifier();
});

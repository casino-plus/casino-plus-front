import '../types/api_models.dart';
import '../store/actions.dart';
import 'reducers/app.dart';
import 'app_state.dart';
import '../components/hook_widget.dart';

final store = useReducer(
  appReducer,
  initialState: AppState(
    isLoading: false,
    game: const Game(
      [],
      Board([], [], 0, 0),
      Dock([]),
    ),
    loginUser: const User('', ''),
  ),
  initialAction: AppAction(),
);

final store2 = MyStore();

class MyStore extends Store<AppState, AppAction> {
  @override
  AppState state = AppState(
    isLoading: false,
    game: const Game(
      [],
      Board([], [], 0, 0),
      Dock([]),
    ),
    loginUser: const User('', ''),
  );

  @override
  void dispatch(AppAction action) {
    state = appReducer(state, action);
  }
}

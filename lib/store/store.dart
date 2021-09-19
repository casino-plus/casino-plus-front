import 'package:casino_plus_app/types/api_models.dart';

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

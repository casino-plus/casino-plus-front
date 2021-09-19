import 'login_user.dart';
import 'loading.dart';
import 'game.dart';
import '../app_state.dart';
import '../../store/actions.dart';

AppState appReducer(AppState state, AppAction action) {
  return AppState(
    isLoading: loadingReducer(state.isLoading, action),
    game: gameReducer(state.game, action),
    loginUser: loginUserReducer(state.loginUser, action),
  );
}

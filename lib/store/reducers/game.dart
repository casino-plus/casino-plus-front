import '../../store/reducers/dock.dart';
import '../../store/reducers/player_list.dart';
import '../../store/reducers/board.dart';
import '../../store/actions.dart';
import '../../types/api_models.dart';

Game gameReducer(Game state, AppAction action) {
  return Game(
    playerListReducer(state.players, action),
    boardReducer(state.board, action),
    dockReducer(state.dock, action),
  );
}

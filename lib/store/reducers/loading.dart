import '../actions.dart';

bool loadingReducer(bool state, AppAction action) {
  if (action is StartLoading) {
    return true;
  } else if (action is EndLoading) {
    return false;
  } else {
    return state;
  }
}

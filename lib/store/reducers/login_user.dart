import '../../types/api_models.dart';
import '../actions.dart';

User loginUserReducer(User state, AppAction action) {
  if (action is LoadLoginUser) {
    return User('test', 'ローカルに保存されていた人');
  } else {
    return state;
  }
}

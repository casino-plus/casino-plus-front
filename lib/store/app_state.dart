import '../types/api_models.dart';

// グローバルに参照するアプリの状態
class AppState {
  // ロード中かどうか
  final bool isLoading;
  // ゲーム状況
  final Game game;
  // ログインユーザー
  final User loginUser;

  const AppState({
    required this.isLoading,
    required this.game,
    required this.loginUser,
  });
}

// アクションに必要な情報の型を定義

class AppAction {}

// テスト
class Test extends AppAction {
  final String text;
  Test(this.text);
}

// ローディング状態を開始
class StartLoading extends AppAction {
  final String text;
  StartLoading(this.text);
}

// ローディング状態を終了
class EndLoading extends AppAction {}

// ゲーム状況をロード
class FetchGame extends AppAction {}

// ローカルのログインユーザー情報を読み込む
class LoadLoginUser extends AppAction {}

import '../types/user.dart';

List<User> getUsers() {
  return [
    User(
      id: 0,
      name: 'Admin',
      iconURL: 'assets/images/guest.png',
      selfIntro: '管理者ユーザーです。よろしくお願いします。',
    ),
    User(
      id: 1,
      name: '開発bot',
      iconURL: 'assets/images/bot.png',
      selfIntro: '機能作成までの間は参加します',
    ),
  ];
}

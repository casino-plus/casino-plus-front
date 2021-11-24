import 'package:flutter/material.dart';

ThemeData colorTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
<<<<<<< HEAD
    backgroundColor: const Color(0xFF006400), // 背景色
=======
    backgroundColor: Color(0xFF006400), // 背景色
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
    bottomAppBarColor: Colors.black, // フッターの色
    canvasColor: Colors.black, // キャンバスの色
    cardColor: const Color(0xFFFF0800), // カードの色
    dialogBackgroundColor: Colors.black, // ダイアログの背景色
    disabledColor: Colors.grey, // 非活性の色
    dividerColor: Colors.white, // 区切り線の色
    errorColor: Colors.red, // エラーの色
    focusColor: const Color(0xFF00CC07), // フォーカス色
    highlightColor: const Color(0xFF00CC07), // ハイライトが当たった時の色
    hintColor: const Color(0xFF00CC07), // ヒントの文字などの色
    hoverColor: const Color(0xFFFF0800), // ホバリング中の色
    indicatorColor: Colors.yellow, // インジケーターの色
    primaryColor: const Color(0xFF006400), // 基本カラー
    primaryColorDark: const Color(0xFF006400), // ダークモードの標準色
    primaryColorLight: const Color(0xFF006400), // ライトモードの標準色
    scaffoldBackgroundColor: const Color(0xFF006400), // Scaffoldウィジェットの背景色
    secondaryHeaderColor: const Color(0xFFFF0800), // セカンドヘッダーの色
    selectedRowColor: const Color(0xFF00CC07), // 選択された行の色
    shadowColor: Colors.black, // 影の色
    splashColor: const Color(0xFF006400), // スプラッシュの色
    toggleableActiveColor: const Color(0xFF00CC07), // トグルできる場合のアクティブカラー
    unselectedWidgetColor: Colors.white, // 選択されていない時の色
  );
}

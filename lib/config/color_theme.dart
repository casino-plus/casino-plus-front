import 'package:flutter/material.dart';

ThemeData colorTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    accentColor: Color(0xFFFF0800), // アクセントカラー
    backgroundColor: Color(0xFF006400), // 背景色
    bottomAppBarColor: Colors.black, // フッターの色
    buttonColor: Color(0xFF00CC07), // ボタンの色
    canvasColor: Colors.black, // キャンバスの色
    cardColor: Color(0xFFFF0800), // カードの色
    dialogBackgroundColor: Colors.black, // ダイアログの背景色
    disabledColor: Colors.grey, // 非活性の色
    dividerColor: Colors.white, // 区切り線の色
    errorColor: Colors.red, // エラーの色
    focusColor: Color(0xFF00CC07), // フォーカス色
    highlightColor: Color(0xFF00CC07), // ハイライトが当たった時の色
    hintColor: Color(0xFF00CC07), // ヒントの文字などの色
    hoverColor: Color(0xFFFF0800), // ホバリング中の色
    indicatorColor: Colors.yellow, // インジケーターの色
    primaryColor: Color(0xFF006400), // 基本カラー
    primaryColorDark: Color(0xFF006400), // ダークモードの標準色
    primaryColorLight: Color(0xFF006400), // ライトモードの標準色
    scaffoldBackgroundColor: Color(0xFF006400), // Scaffoldウィジェットの背景色
    secondaryHeaderColor: Color(0xFFFF0800), // セカンドヘッダーの色
    selectedRowColor: Color(0xFF00CC07), // 選択された行の色
    shadowColor: Colors.black, // 影の色
    splashColor: Color(0xFF006400), // スプラッシュの色
    toggleableActiveColor: Color(0xFF00CC07), // トグルできる場合のアクティブカラー
    unselectedWidgetColor: Colors.white, // 選択されていない時の色
  );
}

/*
accentColorBrightness → Brightness
accentIconTheme → IconThemeData
accentTextTheme → TextTheme
appBarTheme → AppBarTheme
applyElevationOverlayColor → bool
bannerTheme → MaterialBannerThemeData
bottomAppBarTheme → BottomAppBarTheme
bottomNavigationBarTheme → BottomNavigationBarThemeData
bottomSheetTheme → BottomSheetThemeData
brightness → Brightness
buttonBarTheme → ButtonBarThemeData
buttonTheme → ButtonThemeData
cardTheme → CardTheme
checkboxTheme → CheckboxThemeData
chipTheme → ChipThemeData
colorScheme → ColorScheme
cupertinoOverrideTheme → NoDefaultCupertinoThemeData?
dataTableTheme → DataTableThemeData
dialogTheme → DialogTheme
dividerTheme → DividerThemeData
elevatedButtonTheme → ElevatedButtonThemeData
fixTextFieldOutlineLabel → bool
floatingActionButtonTheme → FloatingActionButtonThemeData
hashCode → int
iconTheme → IconThemeData
inputDecorationTheme → InputDecorationTheme
materialTapTargetSize → MaterialTapTargetSize
navigationRailTheme → NavigationRailThemeData
outlinedButtonTheme → OutlinedButtonThemeData
pageTransitionsTheme → PageTransitionsTheme
platform → TargetPlatform
popupMenuTheme → PopupMenuThemeData
primaryColorBrightness → Brightness
primaryIconTheme → IconThemeData
primaryTextTheme → TextTheme
radioTheme → RadioThemeData
runtimeType → Type
scrollbarTheme → ScrollbarThemeData
sliderTheme → SliderThemeData
snackBarTheme → SnackBarThemeData
splashFactory → InteractiveInkFeatureFactory
switchTheme → SwitchThemeData
tabBarTheme → TabBarTheme
textButtonTheme → TextButtonThemeData
textSelectionTheme → TextSelectionThemeData
textTheme → TextTheme
timePickerTheme → TimePickerThemeData
toggleButtonsTheme → ToggleButtonsThemeData
tooltipTheme → TooltipThemeData
typography → Typography
visualDensity → VisualDensity
*/

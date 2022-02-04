# Casino+ (フロントエンド)

ようこそ カジノ+ のフロントエンド開発へ
こちらは Flutter を使ったクライアントアプリです
使用に当たっては事前に Flutter 実行環境をご用意ください

<br>

## 使い方

### 1. Chrome でアプリを動かす

```
$ flutter run -d chrome
```

### 2. iOS, Android など接続された全てのプラットフォームで動かす

事前にそれぞれの起動が必要です

```
$ flutter run -d all
```

<br>

## ソースコード

- ./lib

<br>

## 技術

- Flutter フレームワーク
- Dart プログラミング言語

<br>

## 開発メモ

- データクラスの生成(freezed)

```
$ flutter pub run build_runner build --delete-conflicting-outputs
```

- アプリアイコンの生成 (flutter_launcher_icons)

```
$ flutter pub run flutter_launcher_icons:main
```

- スプラッシュ画面

```
$ flutter pub run flutter_native_splash:create
```

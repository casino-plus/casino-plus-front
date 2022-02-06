import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/config/image_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/*
  # サーバーから送られてくる画像URLは ローカルの画像 を指定している時もある

  - オンラインを参照 https://sample.png
  - アプリ内フォルダを参照 assets://sample.png
  - フラッターの組み込みアイコンを参照 fluttericons://12345
*/

enum ImageScheme {
  assets,
  network,
  flutterIcons,
}

/// URLが指す場所の種類
ImageScheme _scheme(String imageUrl) {
  final components = imageUrl.split('://');
  final schemeString = components.first;

  switch (schemeString) {
    case 'assets':
      return ImageScheme.assets;
    case 'http':
      return ImageScheme.network;
    case 'https':
      return ImageScheme.network;
    case 'fluttericons':
      return ImageScheme.flutterIcons;
    default:
      return throw Exception('不正な画像指定です' + imageUrl);
  }
}

/// アプリで使いやすい形式のパス
String _path(String imageUrl) {
  final components = imageUrl.split('://');
  final schemeString = components.first;
  final path = components.last;
  switch (schemeString) {
    case 'assets':
      return 'assets/images/' + path;
    case 'http':
      return imageUrl;
    case 'https':
      return imageUrl;
    case 'fluttericons':
      return path;
    default:
      return throw Exception('不正な画像指定です' + imageUrl);
  }
}

/// URLから画像を表示する
class UrlImage extends HookConsumerWidget {
  /// 画像の置かれている場所の分類
  final ImageScheme scheme;

  /// Flutterで利用しやすい状態になった画像のパス 'https://...' 'assets/images/...'
  final String path;

  UrlImage(String url)
      : scheme = _scheme(url),
        path = _path(url);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return image();
  }

  Widget image() {
    switch (scheme) {
      case ImageScheme.assets:
        return Image.asset(
          path,
          fit: BoxFit.contain,
        );
      case ImageScheme.network:
        return Image.network(
          path,
          errorBuilder: (context, exception, stackTrace) {
            return const LocalImage(ImageNames.iconGuest);
          },
        );
      case ImageScheme.flutterIcons:
        final codePoint = int.parse(path);
        final iconData = IconData(codePoint);
        final icon = Icon(iconData);
        return icon;
    }
  }
}

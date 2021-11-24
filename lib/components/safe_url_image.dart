import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SafeURLImage extends HookConsumerWidget {
  final String url;
  const SafeURLImage(this.url);

  Widget? image(String url) {
    if (url.startsWith('assets/')) {
      return Image.asset(
        url,
        fit: BoxFit.cover,
      );
    }
    if (url.startsWith('http://') || url.startsWith('https://')) {
      return Image.network(
        url,
        errorBuilder: (context, exception, stackTrace) {
          return Image.asset(
            'assets/images/no-image.png',
            fit: BoxFit.cover,
          );
        },
      );
    }
    return null;
  }

  double size() {
    if (url.isEmpty) {
      return 0;
    } else {
      return 120;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: size(),
      height: size(),
      child: image(url),
    );
  }
}

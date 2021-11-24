import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SafeURLImage extends HookConsumerWidget {
  final String url;
  const SafeURLImage(this.url);

<<<<<<< HEAD
  Widget? image(String url) {
    if (url.startsWith('assets/')) {
      return Image.asset(
        url,
        fit: BoxFit.cover,
      );
    }
    if (url.startsWith('http://') || url.startsWith('https://')) {
      return Image.network(
=======
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 120,
      height: 120,
      child: Image.network(
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
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

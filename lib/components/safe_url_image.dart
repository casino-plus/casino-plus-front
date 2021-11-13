import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SafeURLImage extends HookConsumerWidget {
  final String url;
  SafeURLImage(this.url);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 120,
      height: 120,
      child: Image.network(
        url,
        errorBuilder: (context, exception, stackTrace) {
          return Image.asset(
            'assets/images/no-image.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

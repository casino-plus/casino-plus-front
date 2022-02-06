//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocalImage extends HookConsumerWidget {
  final String path;

  const LocalImage(String imageName) : path = 'assets/images/' + imageName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.asset(
      path,
      fit: BoxFit.contain,
    );
  }
}

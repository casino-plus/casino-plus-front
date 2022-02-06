import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/config/image_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PutBox extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Stack(
        children: const [
          LocalImage(ImageNames.pokerPlusPutBox),
          LocalImage(ImageNames.cardBack),
        ],
      ),
    );
  }
}

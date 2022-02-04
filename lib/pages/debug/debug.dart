import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:typed_data';
import '../../components/image_picker_view.dart';

class Debug extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ImagePickerView(
          placeHolder: const Text('ここをタップして画像を選択'),
          onTapDelete: () => {},
          onPickImage: (bytes) => {},
          onFailedPickImage: (err) => {},
          imageBytes: null,
        ),
        const TextButton(
          onPressed: onPressed,
          child: Text('Debug2'),
        ),
      ],
    );
  }
}

Uint8List? img;

void onPickImage(Uint8List imageBytes) async {
  img = imageBytes;
}

void onPressed() async {}

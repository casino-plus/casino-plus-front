import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../utils/image_picker.dart';

class ImagePickerView extends HookConsumerWidget {
  final double width;
  final double height;
  final Widget placeHolder;
  final Uint8List? imageBytes;
  final void Function(Uint8List imageBytes) onPickImage;
  final void Function() onTapDelete;
  final void Function(String reason)? onFailedPickImage;

  const ImagePickerView({
    this.width = 220,
    this.height = 220,
    required this.placeHolder,
    required this.imageBytes,
    required this.onPickImage,
    required this.onTapDelete,
    this.onFailedPickImage,
  });

  Widget imageArea() {
    if (imageBytes == null) {
      return Container(
        width: width - 20,
        height: height - 20,
        padding: const EdgeInsets.all(20),
        color: Colors.transparent,
        child: placeHolder,
      );
    } else {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: width,
                height: height,
                padding: const EdgeInsets.all(20),
                color: Colors.transparent,
                child: Image.memory(
                  imageBytes!,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: FloatingActionButton(
              onPressed: () => onTapDelete(),
              backgroundColor: Colors.blue,
              child: const Icon(Icons.delete),
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => onTap(context),
      child: imageArea(),
    );
  }

  void onTap(BuildContext context) async {
    final file = await pickImage(onFailed: (reason) {
      if (onFailedPickImage != null) {
        onFailedPickImage!(reason);
      }
    });
    if (file == null) {
      return;
    }
    onPickImage(file.bytes!);
  }
}

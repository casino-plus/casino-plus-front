import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import '../../utils/image_picker.dart';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import '../../utils/image_picker.dart';

class Notifier extends StateNotifier<PlatformFile?> {
  Notifier() : super(null);
  void setImage(PlatformFile file) {
    state = file;
  }
}

final provider = StateNotifierProvider<Notifier, PlatformFile?>(
  (refs) => Notifier(),
);

class ImagePickerView extends HookConsumerWidget {
  final Widget placeHolder;
  ImagePickerView(this.placeHolder, {this.onPickImage});
  final imageBytes = useState<Uint8List?>(null);
  final void Function(Uint8List imageBytes)? onPickImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(provider);
    return GestureDetector(
      onTap: () => onTap(ref),
      child: Container(
        width: 200,
        height: 200,
        child: (imageBytes.value == null)
            ? placeHolder
            : Image.memory(
                imageBytes.value!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }

  void onTap(WidgetRef ref) async {
    final file = await pickImage();
    if (file == null) {
      return;
    }
    imageBytes.value = file.bytes;
    if (onPickImage != null) {
      onPickImage!(file.bytes!);
    }
  }
}

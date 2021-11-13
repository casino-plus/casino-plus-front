import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
  ImagePickerView(this.placeHolder);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(provider);
    return GestureDetector(
      onTap: () => onTap(ref),
      child: Container(
        width: 200,
        height: 200,
        child: (file == null)
            ? placeHolder
            : Image.memory(
                file.bytes!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }

  void onTap(WidgetRef ref) async {
    final imageFile = await pickImage();
    if (imageFile == null) {
      return;
    }
    final notifier = ref.read(provider.notifier);
    notifier.setImage(imageFile);
  }
}

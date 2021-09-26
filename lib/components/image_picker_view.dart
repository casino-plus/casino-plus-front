import 'dart:typed_data';

import 'hook_widget.dart';
import 'package:file_picker/file_picker.dart';
import '../../utils/image_picker.dart';

class ImagePickerView extends HookWidget {
  final Widget placeHolder;
  ImagePickerView(this.placeHolder, {this.onPickImage});
  final imageBytes = useState<Uint8List?>(null);
  final void Function(Uint8List imageBytes)? onPickImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(context),
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

  void onTap(BuildContext context) async {
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

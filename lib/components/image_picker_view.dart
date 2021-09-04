import 'hook_widget.dart';
import 'package:file_picker/file_picker.dart';
import '../../utils/image_picker.dart';

class Notifier extends StateNotifier<PlatformFile?> {
  Notifier() : super(null);
  void setImage(PlatformFile file) {
    this.state = file;
  }
}

final provider = StateNotifierProvider<Notifier, PlatformFile?>(
  (refs) => Notifier(),
);

class ImagePickerView extends HookWidget {
  final Widget placeHolder;
  ImagePickerView(this.placeHolder);
  Widget build(BuildContext context) {
    final file = useProvider(provider);
    return GestureDetector(
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
      onTap: () => onTap(context),
    );
  }

  onTap(BuildContext context) async {
    final imageFile = await pickImage();
    if (imageFile == null) {
      return;
    }
    final notifier = context.read(provider.notifier);
    notifier.setImage(imageFile);
  }
}

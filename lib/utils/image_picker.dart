import 'package:file_picker/file_picker.dart';

Future<PlatformFile?> pickImage() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) {
    return null;
  }
  return result.files.first;
}

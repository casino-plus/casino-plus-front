import 'dart:typed_data';
import '../../types/api_models.dart';
import 'package:file_picker/file_picker.dart';
import '../../components/image_picker_view.dart';
import '../../store/actions.dart' as Action;
import '../../store/store.dart';
import '../../utils/key_value_storage.dart';
import '../../components/hook_widget.dart';
import '../../client/create_user.dart' as CreateUser;

class Debug extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagePickerView(
          Text('Select Image'),
          onPickImage: onPickImage,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(store2.state.loginUser.nickname),
        ),
        TextButton(
          onPressed: onPressed2,
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

void onPressed() async {
  store2.dispatch(Action.LoadLoginUser());
  await save('name', 'CasinoPlus');
}

void onPressed2() async {
  final user = User('testmail', 'testname');
  final req = CreateUser.Request(user);
  final res = await CreateUser.sendRequest(req, img!);
  debugPrint(res.user!.iconURL);
}

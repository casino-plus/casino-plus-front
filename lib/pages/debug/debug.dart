import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:typed_data';
import '../../types/api_models.dart';
import '../../components/image_picker_view.dart';
import '../../center_client/create_user.dart' as create_user;

class Debug extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ImagePickerView(
          placeHolder: Text('ここをタップして画像を選択'),
          onTapDelete: () => {},
          onPickImage: (bytes) => {},
          onFailedPickImage: (err) => {},
          imageBytes: null,
        ),
        TextButton(
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

void onPressed() async {
  final user = User('testmail', 'testname');
  final req = create_user.Request(user);
  final res = await create_user.sendRequest(req, img!);
  debugPrint(res.user!.iconURL);
}

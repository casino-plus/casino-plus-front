import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
<<<<<<< HEAD
=======
import 'dart:typed_data';
import '../../types/api_models.dart';
import 'package:file_picker/file_picker.dart';
import '../../components/image_picker_view.dart';
import '../../utils/key_value_storage.dart';
import '../../backend_client/create_user.dart' as CreateUser;
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1

class Debug extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
<<<<<<< HEAD
    return const Text('Debug');
  }
}
=======
    return Column(
      children: [
        ImagePickerView(
          Text('Select Image'),
          onPickImage: onPickImage,
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

void onPressed2() async {
  final user = User('testmail', 'testname');
  final req = CreateUser.Request(user);
  final res = await CreateUser.sendRequest(req, img!);
  debugPrint(res.user!.iconURL);
}
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1

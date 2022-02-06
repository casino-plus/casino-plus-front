import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/config/image_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:casino_plus/router/router.dart';

class Slot extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(router).popBaseNavi();
            },
            child: Text('戻る'),
          ),
          LocalImage(ImageNames.slotMachineClassicFlat),
        ],
      ),
    );
  }
}

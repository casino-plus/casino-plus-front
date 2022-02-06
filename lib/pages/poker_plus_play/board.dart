import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/config/image_names.dart';

import './put_box.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Board extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              PutBox(),
              const Spacer(),
              PutBox(),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: const [
              SizedBox(
                width: 200,
                height: 200,
                child: LocalImage(ImageNames.pokerPlusWheelOuter),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: LocalImage(ImageNames.pokerPlusWheelInner),
              ),
            ],
          ),
          Row(
            children: [
              PutBox(),
              const Spacer(),
              PutBox(),
            ],
          ),
        ],
      ),
    );
  }
}

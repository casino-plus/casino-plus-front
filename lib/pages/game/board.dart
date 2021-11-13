import '../../pages/game/put_box.dart';
import '../../types/api_models.dart' as model;
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
              Spacer(),
              PutBox(),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/wheel-outer.png'),
              ),
              Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/wheel-inner.png'),
              ),
            ],
          ),
          Row(
            children: [
              PutBox(),
              Spacer(),
              PutBox(),
            ],
          ),
        ],
      ),
    );
  }
}

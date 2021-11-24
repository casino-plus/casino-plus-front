<<<<<<< HEAD
=======
import '../../types/api_models.dart' as model;
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PutBox extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
<<<<<<< HEAD
    return SizedBox(
=======
    return Container(
>>>>>>> 20748ce2387ff8c184d6531269a103934a705fd1
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Image.asset('assets/images/board-put-box.png'),
          Image.asset('assets/images/card-back.png'),
        ],
      ),
    );
  }
}

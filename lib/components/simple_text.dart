//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleText extends HookConsumerWidget {
  final String string;
  final double textSize;
  const SimpleText(
    this.string, {
    double size = 20,
  }) : textSize = size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      string,
      style: TextStyle(
        fontSize: textSize,
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

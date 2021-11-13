import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextArea extends HookConsumerWidget {
  final TextEditingController controller;
  TextArea(this.controller);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: controller,
      maxLines: null,
      decoration: InputDecoration.collapsed(
        hintText: "テキスト本文",
      ),
      keyboardType: TextInputType.multiline,
      autofocus: true,
    );
  }
}

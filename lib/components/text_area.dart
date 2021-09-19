import 'hook_widget.dart';

class TextArea extends HookWidget {
  final TextEditingController controller;
  TextArea(this.controller);

  @override
  Widget build(BuildContext context) {
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

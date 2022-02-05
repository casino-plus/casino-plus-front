import 'package:casino_plus/pages/splash/splash.dart';
import 'package:casino_plus/router/modal_state.dart';
import 'package:casino_plus/router/navi_state.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../controllers/splash_controller.dart';
import 'page_content.dart';

class ModalWindow extends HookConsumerWidget {
  final ModalState state;
  const ModalWindow({
    required this.state,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text('ここにModalが表示されます');
  }
}

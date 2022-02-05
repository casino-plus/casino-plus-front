//
//
//

import 'package:casino_plus/modals/bad_network.dart';
import 'package:casino_plus/modals/old_app_version.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:casino_plus/router/modal_id.dart';

class ModalContent extends HookConsumerWidget {
  final ModalId id;
  const ModalContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case ModalId.badNetwork:
        return BadNetwork();
      case ModalId.oldVersion:
        return OldAppVersion();
    }
  }
}

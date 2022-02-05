import 'package:casino_plus/pages/splash/splash.dart';
import 'package:casino_plus/router/navi_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../controllers/splash_controller.dart';
import '../../router/navi_builder.dart';

class NaviWindow extends HookConsumerWidget {
  final NaviBuilder builder;
  const NaviWindow({
    required this.builder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navi = ref.watch(naviState);

    return Navigator(
      pages: navi.stack.map((pageId) {
        return MaterialPage(
          child: builder.contentView(pageId),
        );
      }).toList(),
      onPopPage: (route, result) {
        debugPrint('POPします');
        return true;
      },
    );
  }
}

import 'package:casino_plus/pages/splash/splash.dart';
import 'package:casino_plus/router/navi_state.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../controllers/splash_controller.dart';
import 'page_content.dart';

class NaviWindow extends HookConsumerWidget {
  final NaviState state;
  const NaviWindow({
    required this.state,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      pages: state.stack.map((pageId) {
        return MaterialPage(
          child: PageContent(id: state.stack.last),
        );
      }).toList(),
      onPopPage: (route, result) {
        debugPrint('POPします');
        return true;
      },
    );
  }
}

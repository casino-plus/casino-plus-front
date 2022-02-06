import 'package:casino_plus/router/page_content.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:casino_plus/router/router.dart';
import 'package:casino_plus/router/tab_config.dart';
import 'package:casino_plus/router/tab_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeTabBar extends HookConsumerWidget {
  final TabState state;
  final TabConfig config;
  const HomeTabBar({
    required this.state,
    required this.config,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        for (var pageId in config.pageList)
          tabItem(
            pageId,
            () {
              debugPrint('タブが押されました');
              ref.read(router).switchHomeTab(pageId);
            },
            context,
            (state.selectedId == pageId)
                ? config.backColorOnSelected
                : config.backColorOnUnselected,
          ),
      ],
    );
  }

  Widget tabItem(PageId pageId, void Function() onPressed, BuildContext context,
      Color textColor) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final labelText = config.labeltexts[pageId]!;
    return SizedBox(
      width: width / config.pageList.length, //横幅
      height: height / 10.0, //高さ
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          labelText,
          style: TextStyle(
            color: textColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingView extends HookConsumerWidget {
  final bool isLoading;
  LoadingView(this.isLoading);

  Widget build(BuildContext context, WidgetRef ref) {
    return this.isLoading
        ? Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5), //この行を追加
                  ),
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
                flex: 1,
              )
            ],
          )
        : Column(
            children: [],
          );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingView extends HookConsumerWidget {
  final bool isLoading;
  const LoadingView(this.isLoading);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return isLoading
        ? Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(),
                ),
              )
            ],
          )
        : Column(
            children: const [],
          );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GradientCircleBorder extends HookConsumerWidget {
  final Widget child;
  GradientCircleBorder({required this.child});

  final borderWidth = 5.0;
  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(500),
  );
  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
        colors: [Colors.blue.shade200, Colors.blue.shade400, Colors.blue]),
    borderRadius: BorderRadius.circular(500),
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: kGradientBoxDecoration,
      child: Padding(
        padding: EdgeInsets.all(borderWidth),
        child: DecoratedBox(
          decoration: kInnerDecoration,
          child: child,
        ),
      ),
    );
  }
}

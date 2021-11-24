import 'player.dart';
import 'dock.dart';
import 'board.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Game extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Player(),
                  Player(),
                ],
              ),
              SizedBox(
                width: 300,
                height: 500,
                child: Board(),
              ),
              Column(
                children: [
                  Player(),
                  Player(),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 300,
            height: 60,
            child: Dock(),
          ),
        ],
      ),
    );
  }
}

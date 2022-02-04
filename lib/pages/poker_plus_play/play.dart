import 'player.dart';
import 'dock.dart';
import 'board.dart';
import '../../state/game.dart' as game_state;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Play extends HookConsumerWidget {
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
              Container(
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
          Container(
            width: 300,
            height: 60,
            child: Dock(),
          ),
        ],
      ),
    );
  }
}

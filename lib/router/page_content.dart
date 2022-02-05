//
//
//

import 'package:casino_plus/pages/debug/debug.dart';
import 'package:casino_plus/pages/developer_message/developer_message.dart';
import 'package:casino_plus/pages/game_list/game_list.dart';
import 'package:casino_plus/pages/home/home.dart';
import 'package:casino_plus/pages/license/license.dart';
import 'package:casino_plus/pages/matching/matching.dart';
import 'package:casino_plus/pages/onboarding/onboarding.dart';
import 'package:casino_plus/pages/poker_plus_play/play.dart' as poker_plus_play;
import 'package:casino_plus/pages/poker_plus_score_list/score_list.dart';
import 'package:casino_plus/pages/profile/profile.dart';
import 'package:casino_plus/pages/receive_drink/receive_drink.dart';
import 'package:casino_plus/pages/roll_dice/roll_dice.dart';
import 'package:casino_plus/pages/slot/slot.dart';
import 'package:casino_plus/pages/slot_list/slot_list.dart';
import 'package:casino_plus/pages/splash/splash.dart';
import 'package:casino_plus/pages/terms_of_service/terms_of_service.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageContent extends HookConsumerWidget {
  final PageId id;
  const PageContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case PageId.splash:
        return const Splash();
      case PageId.onboarding:
        return Onboarding();
      case PageId.rollDice:
        return RollDice();
      case PageId.receiveDrink:
        return ReceiveDrink();
      case PageId.home:
        return Home();
      case PageId.profile:
        return Profile();
      case PageId.gameList:
        return GameList();
      case PageId.slotList:
        return SlotList();
      case PageId.matching:
        return Matching();
      case PageId.pokerPlusPlay:
        return poker_plus_play.Play();
      case PageId.pokerPlusScore:
        return ScoreList();
      case PageId.slot:
        return Slot();
      case PageId.developerMessage:
        return DeveloperMessage();
      case PageId.license:
        return License();
      case PageId.termsOfService:
        return TermsOfService();
      case PageId.debug:
        return Debug();
    }
  }
}

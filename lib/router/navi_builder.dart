import 'package:casino_plus/pages/debug/debug.dart';
import 'package:casino_plus/pages/developer_message/developer_message.dart';
import 'package:casino_plus/pages/home/home.dart';
import 'package:casino_plus/pages/license/license.dart';
import 'package:casino_plus/pages/matching/matching.dart';
import 'package:casino_plus/pages/onboarding/onboarding.dart';
import 'package:casino_plus/pages/poker_plus_play/play.dart' as poker_plus_play;
import 'package:casino_plus/pages/slot/slot.dart';
import 'package:casino_plus/pages/splash/splash.dart';
import 'package:casino_plus/pages/terms_of_service/terms_of_service.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';

class NaviBuilder {
  Widget emptyView() {
    return const Text('Empty');
  }

  Widget contentView(PageId id) {
    switch (id) {
      case PageId.splash:
        return const Splash();
      case PageId.onboarding:
        return Onboarding();
      case PageId.rollDice:
        return throw Exception('無効なページです');
      case PageId.receiveDrink:
        return throw Exception('無効なページです');
      case PageId.home:
        return Home();
      case PageId.profile:
        return throw Exception('無効なページです');
      case PageId.gameList:
        return throw Exception('無効なページです');
      case PageId.slotList:
        return throw Exception('無効なページです');
      case PageId.matching:
        return Matching();
      case PageId.pokerPlusPlay:
        return poker_plus_play.Play();
      case PageId.pokerPlusScore:
        return throw Exception('無効なページです');
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

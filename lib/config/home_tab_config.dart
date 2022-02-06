//
//
//

import 'package:casino_plus/router/page_id.dart';
import 'package:casino_plus/router/tab_config.dart';
import 'package:flutter/material.dart';

final homeTabConfig = TabConfig(
  pageList: [
    PageId.profile,
    PageId.gameList,
    PageId.slotList,
  ],
  backColorOnSelected: Colors.white,
  backColorOnUnselected: Colors.black,
  imageUrls: {
    PageId.profile: 'fluttericons://' + Icons.person.codePoint.toString(),
    PageId.gameList:
        'fluttericons://' + Icons.play_arrow_rounded.codePoint.toString(),
    PageId.slotList: 'fluttericons://' + Icons.person.codePoint.toString(),
  },
  labeltexts: {
    PageId.profile: 'Profile',
    PageId.gameList: 'Game',
    PageId.slotList: 'Slot',
  },
);

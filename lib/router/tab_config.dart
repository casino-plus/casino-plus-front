//
//
//

import 'package:casino_plus/router/page_id.dart';
import 'package:flutter/material.dart';

class TabConfig {
  final List<PageId> pageList;
  final Color backColorOnSelected;
  final Color backColorOnUnselected;
  final Map<PageId, String> imageUrls;
  final Map<PageId, String> labeltexts;

  const TabConfig({
    required this.pageList,
    required this.backColorOnSelected,
    required this.backColorOnUnselected,
    required this.imageUrls,
    required this.labeltexts,
  });
}

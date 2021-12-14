import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rss_lecture/src/pages/last24_news_page/last24_news_page.dart';
import 'package:flutter_rss_lecture/src/pages/last_news_page/last_news_page.dart';

class PageProvider with ChangeNotifier {
  int currentPageID;

  PageProvider({this.currentPageID = 0});

  get page {
    switch (currentPageID) {
      case 0:
        return const LastNewsPage();
      case 1:
        return const Last24NewsPage();
      default:
        throw ArgumentError();
    }
  }

  void openPage(int pageID) {
    currentPageID = pageID;
    notifyListeners();
  }
}

import 'dart:developer';

import 'package:flutter_list_methods/page_view_theme/page_view.dart';

class PageviewExample {
  example1() {
    PageViewModel.fromJson(pageViewThemeMap);
    var titleWord = pageViewThemeMap["title"];
    var buttonWord = pageViewThemeMap["button"];
    var buttonLinkWord = pageViewThemeMap["button"];

    log(titleWord.toString());
    log(buttonWord.toString());
    log(buttonLinkWord.toString());
  }
}

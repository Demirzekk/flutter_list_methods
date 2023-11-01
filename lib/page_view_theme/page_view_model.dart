import 'dart:developer';

import 'package:flutter_list_methods/page_view_theme/page_view.dart';

class PageviewExample {
  example1() {
    PageViewModel.fromJson(pageViewThemeMap);
    var t = pageViewThemeMap["title"];
    log(t.toString());
  }
}

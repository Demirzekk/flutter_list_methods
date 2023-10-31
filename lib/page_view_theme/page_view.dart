// TODO
import 'package:flutter/material.dart';

final pageViewThemeMap = {
  "title": "Whats new",
  "desc": [
    {
      "icon": Icons.abc_outlined,
      "title": "Fount Events",
      "subtitle": "Siri suggets..."
    },
    {
      "icon": "time.icon",
      "title": "Time to Leave",
      "subtitle": "Calander suggets..."
    },
    {
      "icon": "route.icon",
      "title": "Location to Leave",
      "subtitle": "Calander suggets..."
    }
  ],
  "button": {
    "button_color": "red",
    "button_title": "Continue",
    "button_link": "main_page"
  }
};

class PageViewModel {
  String? title;
  List<Description>? desc;
  Buton? button;
  PageViewModel(this.button, this.desc, this.title);

  PageViewModel.fromJson(Map<String, Object> json) {
    title = json["title"];
    if (json["desc"] != null) {
      desc = [];
    }
    

  }
}

class Title {
  String? title;
  Title(this.title);
}

class Description {
  IconData? icon;
  String? title;
  String? subtitle;
  Description(this.icon, this.subtitle, this.title);
}

class Buton {
  Color? buttonColor;
  String? buttonTitle;
  String? buttonLink;
  Buton(this.buttonColor, this.buttonLink, this.buttonTitle);
}


class Modelt{
  funstion (){
    PageViewModel.fromJson(pageViewThemeMap);
  }

}
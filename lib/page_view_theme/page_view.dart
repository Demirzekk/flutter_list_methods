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

  PageViewModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    if (json["desc"] != null) {
      desc = [];
      (json["desc"] as List).forEach((element) {});
    }
    button = json[button];
  }

 toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["title"] = title;
    json["desc"] = desc;
    json["button"] = button;

    return json;
  }



}

class Description {
  String? icon;
  String? title;
  String? subtitle;
  Description(this.icon, this.subtitle, this.title);
  Description.fromJson(Map<dynamic, dynamic> json) {
    icon = json["icon"];
    title = json["title"];
    subtitle = json["subtitle"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["icon"] = icon;
    json["title"] = title;
    json["subtitle"] = subtitle;

    return json;
  }
}

class Buton {
  Color? buttonColor;
  String? buttonTitle;
  String? buttonLink;
  Buton(this.buttonColor, this.buttonLink, this.buttonTitle);

  Buton.fromJson(Map<dynamic, dynamic> json) {
    buttonColor = json["buttonColor"];
    buttonTitle = json["buttonTitle"];
    buttonLink = json["buttonLink"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["buttonColor"] = buttonColor;
    json["buttonTitle"] = buttonTitle;
    json["buttonLink"] = buttonLink;

    return json;
  }




}





import 'package:flutter/material.dart';

import 'package:flutter_list_methods/sublist_example.dart/sublist_page.dart';

String appleNewsUrl =
    "https://pbs.twimg.com/profile_images/1110228024954245120/OTdcTC9Y_400x400.png";

Map<String, dynamic> appleNewsMap = {
  "big_logo": appleNewsUrl,
  "title1": "Welcome to ",
  "title2": "apple News",
  "subtitle":
      "The best stories from the soures you love, seleted just for you.",
  "icon": Icons.newspaper,
  "desc":
      "apple collects yout activity in news , whih is not assoiated with your Apple ID, in order to improve and personalize Apple News. when....",
  "see_link": {
    "link_text": "See how your datais managed",
    "link_color": 0xFFFFB0B43,
    "link_url": "https://onedio.com/"
  },
  "button": {
    "button_color": 0xFFFFB0B43,
    "button_text": "Continue",
    "button_route": const LazyPaging()
  }
};

class AppleNewsModel {
  String? bigLogo;
  String? title1;
  String? title2;
  String? subtitle;
  IconData? icon;
  String? desc;
  SeeLink? seeLink;
  Button? button;

  AppleNewsModel(this.button, this.desc, this.seeLink, this.icon, this.subtitle,
      this.title1, this.title2);

  AppleNewsModel.fromJson(Map<String, dynamic> json) {
    bigLogo = json["big_logo"];
    title1 = json["title1"];
    title2 = json["title2"];
    subtitle = json["subtitle"];
    icon = json["icon"];
    desc = json["desc"];
    seeLink = SeeLink.fromJson(json["see_link"]);
    button = Button.fromJson(json["button"]);
  }
}

class BigLogo {
  String? biglogo;
  BigLogo(this.biglogo);

  BigLogo.fromJson(Map<String, dynamic> json) {
    biglogo = json["big_logo"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["big_logo"] = biglogo;
    return json;
  }
}

class Title1 {
  String? title1;
  Title1(this.title1);

  Title1.fromJson(Map<String, dynamic> json) {
    title1 = json["title1"];
  }

  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["title1"] = title1;
    return json;
  }
}

class Title2 {
  String? title2;
  Title2(this.title2);

  Title2.fromJson(Map<String, dynamic> json) {
    title2 = json["title2"];
  }

  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["title2"] = title2;
    return json;
  }
}

class Subtitle {
  String? subtitle;
  Subtitle(this.subtitle);

  Subtitle.fromJson(Map<String, dynamic> json) {
    subtitle = json["subtitle"];
  }

  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["subtitle"] = subtitle;
    return json;
  }
}

class IconEx {
  IconData? icon;
  IconEx(
    this.icon,
  );

  IconEx.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["icon"] = icon;
    return json;
  }
}

class Desc {
  String? desc;

  Desc(this.desc);
  Desc.fromJson(Map<String, dynamic> json) {
    desc = json["desc"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["desc"] = desc;
    return json;
  }
}

class SeeLink {
  String? linkText;
  int? linkColor;
  String? linkUrl;

  SeeLink(this.linkText, this.linkColor, this.linkUrl);

  SeeLink.fromJson(Map<String, dynamic> json) {
    linkText = json["link_text"];
    linkColor = json["link_color"];
    linkUrl = json["link_url"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["link_text"] = linkText;
    json["link_color"] = linkColor;
    json["link_url"] = linkUrl;
    return json;
  }
}

class Button {
  int? buttonColor;
  String? buttonText;
  Widget? buttonRoute;

  Button(this.buttonColor, this.buttonText, this.buttonRoute);

  Button.fromJson(Map<String, dynamic> json) {
    buttonColor = json["button_color"];
    buttonText = json["button_text"];
    buttonRoute = json["button_route"];
  }

  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["button_color"] = buttonColor;
    json["button_text"] = buttonText;
    json["button_route"] = buttonRoute;
    return json;
  }
}

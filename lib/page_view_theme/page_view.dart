// TODO
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_list_methods/home_page.dart';

Map<String, dynamic> pageViewThemeMap = {
  "title": "clean architecture",
  "desc": [
    {
      "icon": Icons.abc_outlined,
      "title": "Fount Events",
      "subtitle": "Siri suggets..."
    },
    {
      "icon": Icons.calendar_month,
      "title": "Time to Leave",
      "subtitle": "Calander suggets..."
    },
    {
      "icon": Icons.pin_drop,
      "title": "Location to Leave",
      "subtitle": "Calander suggets..."
    },
    {
      "icon": Icons.abc_outlined,
      "title": "Fount Events",
      "subtitle": "Siri suggets..."
    },
    {
      "icon": Icons.calendar_month,
      "title": "Time to Leave",
      "subtitle": "Calander suggets..."
    },
    {
      "icon": Icons.pin_drop,
      "title": "Location to Leave",
      "subtitle": "Calander suggets..."
    }
  ],
  "button": {
    "button_color": 0xFFFF0000, // 4294901760
    "button_title": "Continue",
    "button_link": const MyHomePage()
  }
};

class PageViewModel {
  String? title;
  List<Desc>? desc;
  Button? button;

  PageViewModel({
    required this.title,
    required this.desc,
    required this.button,
  });

  PageViewModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    desc = List<Desc>.from(json["desc"].map((e) => Desc.fromJson(e)));
    button = Button.fromJson(json["button"]);
  }
}

class Button {
  int? buttonColor;
  String? buttonTitle;
  Widget? buttonLink;

  Button({
    required this.buttonColor,
    required this.buttonTitle,
    required this.buttonLink,
  });

  Button.fromJson(Map<String, dynamic> json) {
    log(json.toString());
    buttonColor = json["button_color"];
    buttonTitle = json["button_title"];
    buttonLink = json["button_link"];
  }

  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["button_color"] = buttonColor;
    json["button_title"] = buttonTitle;
    json["button_link"] = buttonLink;
    return json;
  }
}

class Desc {
  IconData? icon;
  String? title;
  String? subtitle;

  Desc({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  Desc.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
    title = json["title"];
    subtitle = json["subtitle"];
  }

  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["icon"] = icon;
    json["title"] = title;
    json["subtitle"] = subtitle;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Desc &&
        other.icon == icon &&
        other.title == title &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode => icon.hashCode ^ title.hashCode ^ subtitle.hashCode;
}





// class PageViewModel {
//   String? title;
//   List<Description>? desc;
//   Buton? button;
//   PageViewModel(this.button, this.desc, this.title);

//   PageViewModel.fromJson(Map<String, dynamic> json) {
//     title = json["title"];
//     if (json["desc"] != null) {
//       desc = [];
//       (json["desc"] as List).forEach((element) {});
//     }
//     button = json[button];
//   }

//  toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json["title"] = title;
//     json["desc"] = desc;
//     json["button"] = button;

//     return json;
//   }



// }

// class Description {
//   String? icon;
//   String? title;
//   String? subtitle;
//   Description(this.icon, this.subtitle, this.title);
//   Description.fromJson(Map<dynamic, dynamic> json) {
//     icon = json["icon"];
//     title = json["title"];
//     subtitle = json["subtitle"];
//   }
//   toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json["icon"] = icon;
//     json["title"] = title;
//     json["subtitle"] = subtitle;

//     return json;
//   }
// }

// class Buton {
//   Color? buttonColor;
//   String? buttonTitle;
//   String? buttonLink;
//   Buton(this.buttonColor, this.buttonLink, this.buttonTitle);

//   Buton.fromJson(Map<dynamic, dynamic> json) {
//     buttonColor = json["buttonColor"];
//     buttonTitle = json["buttonTitle"];
//     buttonLink = json["buttonLink"];
//   }
//   toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json["buttonColor"] = buttonColor;
//     json["buttonTitle"] = buttonTitle;
//     json["buttonLink"] = buttonLink;

//     return json;
//   }




// }


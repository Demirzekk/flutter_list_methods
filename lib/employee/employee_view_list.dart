import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_list_methods/employee/employee_model.dart';

class EmployeViewListModel {
  List<EmployeeModel> employedList = [
    EmployeeModel("hayri", "Mafız", 10000, 0),
    EmployeeModel("Süleyman", "Kurtuluş", 20000, 0),
    EmployeeModel("hüzeyma", "kaplan", 5000, 0),
    EmployeeModel("Mevlüt", "Tükenmez", 50000, 0),
  ];

// soru 1:
  annualBonus() {
    // for (var i = 0; i < employedList.length; i++) {
    //   employedList[i].bonus = (employedList[i].salary ?? 0) * 0.2;

    //   log("${employedList[i].name} - ${employedList[i].bonus}".toString());
    // }
    employedList.map((e) {
      e.bonus = (e.salary ?? 0) * 0.2;
      log("${e.name}'in yıllık bonusu ${e.bonus} ₺'dir.");
    }).toList();

    return;
  }

  // soru 2
  employeeToJson() {
    var result = jsonEncode(employedList);
    log(result);
  }

  employeeListToJson() {
    // List<String> maplist = [];
    // employedList.map((EmployeeModel employee) {
    //   final json = jsonEncode(employee.toJson());
    //   maplist.add(json);
    //   return json;
    // }).toList();

    // log(maplist.toString());

    List<EmployeeModel> rest = maplist.map((e) {
      Map<String, dynamic> json = jsonDecode(jsonEncode(e));
      return EmployeeModel.fromJson(json);
    }).toList();
    log(rest.toString());
    log("************");

    for (var i = 0; i < employedList.length; i++) {
      if ((employedList[i].salary ?? 4) < 20000) {
        log(employedList[i].toString());
      }

      if (employedList[i].name == "hüzeyma") {
        var fit = employedList[i].surname;
        log(fit.toString());
      }
    }
  }
}

// Map<String, dynamic> map = {
//   "name": "Hayri",
//   "surname": "Çubuk",
//   "salary": "24000",
// };

List<Map> maplist = [
  {"name": "hayri", "surname": "Mafız", "salary": 10000.0, "bonus": 0.0},
  {"name": "Süleyman", "surname": "Kurtuluş", "salary": 20000.0, "bonus": 0.0},
  {"name": "hüzeyma", "surname": "kaplan", "salary": 5000.0, "bonus": 0.0},
  {"name": "Mevlüt", "surname": "Tükenmez", "salary": 50000.0, "bonus": 0.0},
  {"name": "firuze", "surname": "Fil", "salary": 10000.0, "bonus": 0.0}
];

final maplist2 = [
  {"name": "hayri", "surname": "Mafız", "salary": 10000.0, "bonus": 0.0},
  {"name": "Süleyman", "surname": "Kurtuluş", "salary": 20000.0, "bonus": 0.0},
  {"name": "hüzeyma", "surname": "kaplan", "salary": 5000.0, "bonus": 0.0},
  {"name": "Mevlüt", "surname": "Tükenmez", "salary": 50000.0, "bonus": 0.0},
  {"name": "firuze", "surname": "Fil", "salary": 10000.0, "bonus": 0.0}
];
// TODO
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

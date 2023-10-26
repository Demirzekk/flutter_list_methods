import 'dart:convert';
import 'dart:developer';

import 'package:flutter_list_methods/employee/employee_model.dart';

class EmployeViewListModel {
  List<EmployeeModel> employedList = [
    EmployeeModel("hayri", "Mafız", 10000, 0),
    EmployeeModel("Süleyman", "Kurtuluş", 20000, 0),
    EmployeeModel("hüzeyma", "kaplan", 5000, 0),
    EmployeeModel("Mevlüt", "Tükenmez", 50000, 0),
    EmployeeModel("firuze", "Fil", 10000, 0),
  ];

  // - Bir Employee objesi hazırlayın. İçerisinde name, surname ve salary ve bonus fieldları olsun.
// Bu Employee objesi tipinde 5 adetlik bir liste oluşturun. Salary fieldına maaş atamaları yapın.
//Ve maaşının yüzde 20sini yıllık alacağını bonus fieldına ekleyin.
//Son olarak isim ve prim olarak liste halinde hangi işcinin ne kadar prim alacağını loga yazdırınız.
// - Yukarıdaki örnekte yapıtığınız 5 adetlik Employe listesini json formatına dönüştürün ve loga yazdırınız

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

final map3 = {
  "title": "Whats new",
  "desc": [
    {
      {
        "icon": "email.icon",
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
    }
  ],
  "button": {
    "button_color": "red",
    "button_title": "Continue",
    "button_link": "main_page"
  }
};

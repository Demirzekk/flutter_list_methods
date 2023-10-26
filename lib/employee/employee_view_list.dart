


import 'dart:convert';
import 'dart:developer';

import 'package:flutter_list_methods/employee/employee_model.dart';

class EmployeViewListModel {
  List<EmployeeModel> employedList = [
    EmployeeModel("hayri", "Mafız", 10000, 45),
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
    for (var i = 0; i < employedList.length; i++) {
      employedList[i].bonus =
          (((employedList[i].salary ?? 0) / 100) * 20).toInt();
      log("${employedList[i].name} - ${employedList[i].bonus}");
    }

    return;
  }

  employeToJson() {
    var result = jsonEncode(employedList);
    log(result);
  }
  // soru 2
}

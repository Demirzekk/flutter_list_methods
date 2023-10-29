import 'dart:developer';

import 'package:flutter_list_methods/map_learn.dart/map_stil.dart';

class CompanyUserModel {
  String? name;
  String? surname;
  String? age;
  String? salery;
  List? qualification;
  CompanyUserModel(
      {this.name, this.surname, this.age, this.salery, this.qualification});

  CompanyUserModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    surname = json["surname"];
    age = json["age"];
    salery = json["salery"];
    qualification = json["qualification"];
  }
// benim hali hazırdaki objemi json formatına dönüştüren isimlendirilmiş constructor
  CompanyUserModel.toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["name"] = name;
    json["surname"] = surname;
    json["age"] = age;
    json["salery"] = salery;
    json["qualification"] = qualification;
  }
  question1() {
    final rest = CompanyUserModel.fromJson(companyUser);
    log(rest.salery.toString());

    log(rest.name.toString());
  }
}

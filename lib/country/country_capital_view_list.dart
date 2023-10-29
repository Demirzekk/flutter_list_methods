import 'dart:developer';

import 'package:flutter_list_methods/country/country_capital_model.dart';

class CountryModelView {
  controlCountryCapital() {
    const countryMap = {
      'USA': '',
      'India': 'New Delhi',
      'China': "",
      "Türkiye": "Ankara",
      "Romanya": ""
    };
    CountryCapitalModel model = CountryCapitalModel.fromJson(countryMap);

    log(model.toString());
    if (model.china?.isEmpty == true) {
      model.china = "Pekin";
    }
    log("-------------------------------");
    log(model.toString());
  }
}

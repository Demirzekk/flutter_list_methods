// - CountryCapital adında bir model(obje) üretin ve bu json değerini objeye tanınlayım.
//Map<String, String> countryCapital = {  'USA': 'Washington, D.C.', 'India': 'New Delhi',
//'China': ‘’,’Türkiye’:’Ankara’,’Romanya’:’’}; bu map yapısında valuesu boş olan değerlere bir başkent ekleyin.

import 'dart:developer';

class CountryCapitalModel {
  String? usa;
  String? india;
  String? china;
  String? turkiye;
  String? romanya;

  CountryCapitalModel(
      {this.china, this.india, this.romanya, this.turkiye, this.usa});

  CountryCapitalModel.fromJson(Map<String, String> json) {
    usa = json["usa"];
    india = json["india"];
    china = json["china"];
    turkiye = json["turkiye"];
    romanya = json["romanya"];
  }

  counterfunction() {
    
    if (countryMap["USA"] == "" || countryMap["china"] == "") {
      countryMap["USA"] = "Washington, DC";
      countryMap["china"] = "pekin";
      log(countryMap.toString());
      log("selam");
    }
  }

  final countryMap = {
    'USA': '',
    'India': 'New Delhi',
    'China': "",
    "Türkiye": "Ankara",
    "Romanya": ""
  };
}

final map2 = {
  'country': 'Washington, D.C.',
  'capitalCity': 'New Delhi',
};

final map3 = [
  {
    'USA': 'Washington, D.C.',
  },
  {
    'India': 'New Delhi',
  },
  {
    "Türkiye": "Ankara",
  }
];

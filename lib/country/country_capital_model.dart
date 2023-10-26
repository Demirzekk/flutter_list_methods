// - CountryCapital adında bir model(obje) üretin ve bu json değerini objeye tanınlayım.
//Map<String, String> countryCapital = {  'USA': 'Washington, D.C.', 'India': 'New Delhi',
//'China': ‘’,’Türkiye’:’Ankara’,’Romanya’:’’}; bu map yapısında valuesu boş olan değerlere bir başkent ekleyin.

class CountryCapitalModel {
  String? country;
  String? capitalCity;
  CountryCapitalModel(this.country, this.capitalCity);

  CountryCapitalModel.fromMap(Map<String, String> map) {
    country = map.keys.first;
    capitalCity = map.values.first;
  }
}

class CountrsList {}

final map = {
  'USA': 'Washington, D.C.',
  'India': 'New Delhi',
  'China': "",
  "Türkiye": "Ankara",
  "Romanya": ""
};

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

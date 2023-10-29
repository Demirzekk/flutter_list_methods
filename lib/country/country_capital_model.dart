// - CountryCapital adında bir model(obje) üretin ve bu json değerini objeye tanınlayım.
//Map<String, String> countryCapital = {  'USA': 'Washington, D.C.', 'India': 'New Delhi',
//'China': ‘’,’Türkiye’:’Ankara’,’Romanya’:’’}; bu map yapısında valuesu boş olan değerlere bir başkent ekleyin.

class CountryCapitalModel {
  String? usa;
  String? india;
  String? china;
  String? turkiye;
  String? romanya;

  CountryCapitalModel(
      {this.china, this.india, this.romanya, this.turkiye, this.usa});

  CountryCapitalModel.fromJson(Map<String, String> json) {
    usa = json["USA"];
    india = json["India"];
    china = json["China"];
    turkiye = json["turkiye"];
    romanya = json["romanya"];
  }

  // counterfunction() {
  //   if (countryMap["USA"] == "" || countryMap["china"] == "") {
  //     countryMap["USA"] = "Washington, DC";
  //     countryMap["china"] = "pekin";
  //     log(countryMap.toString());
  //     log("selam");
  //   }
  // }

  @override
  String toString() {
    return 'CountryCapitalModel(usa: $usa, india: $india, china: $china, turkiye: $turkiye, romanya: $romanya)';
  }
}

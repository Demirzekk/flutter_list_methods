// - List<Map<String,double>> stockList= [“kahve”:5.3,”espresso”: 4.3,”çay”:10.4
// ,”filtre kahve”:4.2]; Bu listede stoğu 5.0’in altında kalan ürünlere stoğu az kalan
// ürünler listesine ekleyip konsola yazdırınız
List<Map<String, dynamic>> coffieListMap = [
  {
    "kahve": 5.3,
  },
  {
    "espresso": 4.3,
  },
  {
    "çay": 10.4,
  },
  {
    "filtre_kahve": 4.2,
  },
  {
    "types": ["americano", "filter", "arabica", "turkish"],
  }
];

class CoffieModel {
  String? key;
  double? value;
  

  CoffieModel.fromJson(Map<String, dynamic> json) {
    key = json.keys.first;
    value = json.values.first;
    
  }

  @override
  String toString() => 'CoffieModel(key: $key, value: $value)';
}

 
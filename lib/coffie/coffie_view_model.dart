import 'dart:developer';

import 'package:flutter_list_methods/coffie/coffie_model.dart';

class CoffieViewModel {
  checkCoffieStock() {
    // Json içindeki key'e ulaşmak ve valuesunu değiştirmek
    // coffieListMap[3]["filtre_kahve"] = 10.9;
    // log(coffieListMap[3]["filtre_kahve"].toString());
    List<CoffieModel> coffieModelList = [];
    coffieModelList =
        coffieListMap.map((e) => CoffieModel.fromJson(e)).toList();

    List<CoffieModel> lowStockCoffies =
        coffieModelList.where((element) => (element.value ?? 0) < 5.0).toList();

    log(lowStockCoffies.toString());
  }
}

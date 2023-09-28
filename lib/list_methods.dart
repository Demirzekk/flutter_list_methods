import 'dart:developer';

class Methods {
  List list = [];
  String ad = "";
  Methods(List list);

  listAdd() {
    //listeye yeni eleman ekler
    if (list.any((element) => element == ad)) {
      log("$ad zaten var");
      return;
    }
    list.add(ad);
  }

  listAddAll() {
    const list2 = ["Ekmek", "su", "süt"];
    //listeye başka liste ekler
    list.addAll(list2);
  }

  listAny() {
    const list2 = ["Ekmek", "su", "süt", "peynir"];
    //listenin içinde sağlanan koşul varsa yada yoksa bool değer dönderir
    const sayi = [4, 5, 6];
    final sonuc = sayi.any((element) => element < 3);
    log("sonuc $sonuc");
  }

  listAsMap() {
    const list2 = ["Ekmek", "su", "süt", "peynir"];
    //listenin içinde sağlanan koşul varsa yada yoksa bool değer dönderir
    // map = list.asMap();
    // log("sonuc $map");
  }

  listCast() {
    List? list3 = [1, 2, 3];
    const list2 = ["Ekmek", "su", "süt", "peynir"];
    //Tipi belli olmayan bir listenin belli tipte geleceği iddia ediyorsun
    List<int> sonuc = list3.cast<int>();
    log("sonuc ${sonuc.toString()}");
  }

  listClear() {
    list = [];
    list.clear();
  }

  listContains() {
    var sonuc = list
        .any((element) => element.toLowerCase().contains("mEh".toLowerCase()));
    log(sonuc.toString());
  }

  listElementAt() {
    var sonuc = list.elementAt(0);
    log(sonuc.toString());
  }

  listEvery() {
    List<double> doubleList = [0.1, 0.5, 0.77, 0.99, 2.6];
    var sonuc = doubleList.every((element) => element < 1);
    log(sonuc.toString());
  }

  listExpand() {
    //verilen listede her sayidan 1 den itibaren kendisine kadar genişletir
    List<int> doubleList2 = [0, 3, 4, 7];
    Iterable<int> count(int n) sync* {
      for (var i = 1; i <= n; i++) {
        yield i;
      }
    }

    var sonuc = doubleList2.expand(count);
    log(sonuc.toString());
  }

  listFillRange() {
    list.fillRange(1, 4, "boş geldi");
  }

  listFirstWhere() {
    List<int> numbers = [0, 3, 4, 7, 8, 16, 45];
    var sonuc = numbers.firstWhere(
      (element) => element > 80,
      orElse: () {
        return -1;
      },
    );
    log(sonuc.toString());
  }

  listFold() {
    int initialVal = 0;
    List<int> numbers = [2, 3, 4, 7, 8, 15, 5];
    var sonuc = numbers.fold(
        initialVal, (previousValue, element) => previousValue + element);
    log(sonuc.toString());
  }

  listFollowedBy() {
    const list2 = ["Ekmek", "su", "süt", "peynir"];

    list = list.followedBy(list2).toList();
  }

  listForeach() {
    list.forEach((element) {
      log(element);
    });
  }

  listGetRange() {
    var sonuc = list.getRange(2, 4);
    log(sonuc.toString());
  }


}

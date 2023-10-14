import 'dart:convert';
import 'dart:developer';

class Methods2 {
  listIndexOf() {
    // bir listedeki belirtilen elementin ilk dizini yoksa return -1 gelir
    final notes = ["do", "re" "mi", "fa", "re", "re", "re", "re ", "do"];
    var sonuc = notes.indexOf("re");
    log(sonuc.toString());
  }

  listindexWhere() {
    final notes = ["do", "re" "mi", "fa", "re", "re", "re", "re "];
    var sonuc = notes.indexWhere((notes) => notes.startsWith("p"));
    log(sonuc.toString());
  }

  listinsert() {
    final numbers = [1, 2, 3, 4, 5, 6];
    const index = 0;

    numbers.insert(index, 10);
    log(numbers.toString());
  }

  listinsertAll() {
    final number = [1, 2, 3, 4, 5, 6];
    final items = [5, 7, 9, 1];
    number.insertAll(0, items);
    log(number.toString());
  }

  listjoin() {
    final planetsByMass = {0.06: 'Mercury', 0.81: 'Venus', 0.11: 'Mars'};
    final joinedNames = planetsByMass.values.join(' gezegeni--');
    log(joinedNames.toString());
  }

  listFollowedBy() {
    //eski liste üzerinde değişiklik yapmaz yeni bir liste verir
    var list2 = ["Ekmek", "su", "süt", "peynir"];

    final sonuc = list2.followedBy(["Ekmek", "su", "süt", "peynir"]);
    log(list2.toString());
    log(sonuc.toString());
  }

  listMap() {
    final lessons = ["mat", "ing", "tr"];
    final lessonsMap = [
      {"0": "Mat"},
      {"1": "Fen"},
      {"2": "Bio"},
    ];

    final result = lessonsMap.map((e) => e.values).toList();
    log(result.toString());
  }

  listMaptwoExample() {
    List products = jsonDecode('''
[
  {"name": "Screwdriver", "price": 42.00},
  {"name": "Wingnut", "price": 0.50}
]
''');

    var priceList =
        products.map((e) => (e as Map).entries.last.value as double).toList();
    final priceSum = priceList.fold<double>(0, (e, k) => e + k);
    log(priceSum.toString());
  }

  listnoSuchMethod() {
    final lesson = [1, 2, 3, 4];

    var sonuc =
        lesson.noSuchMethod(Invocation.setter(const Symbol("member="), 1));
    log(sonuc.toString());
  }

  listreduce() {
    //  number listesindeki elementleri toplar
    final numbers = <double>[10, 2, 5, 0.5];
    final result = numbers.reduce((value, element) => value + element);

    log(result.toString());
  }

  //// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  listRemove() {
    final parts = ['el', 'ayak', 'kafa', 'parmak'];
    final retVal = parts.remove("el");

    log(retVal.toString());
    log(parts.toString());
  }

  listRemoveAt() {
    final parts = ['el', 'ayak', 'kafa', 'parmak'];
    final retVal = parts.removeAt(1);

    log("kaldırılan nesne: $retVal");
    log(parts.toString());
  }

  listRemoveLast() {
    // Listenin son elemanın siler listeden
    final parts = <String>['el', 'ayak', 'beden', 'parmak', "kol"];
    final retVal = parts.removeLast();

    log(retVal.toString());
  }

  listRemoveRange() {
    // aralıktaki sayıları kaldırır, ilk indexe eşit olanı kaldırır son indexe eşit olan kalır
    final numbers = [1, 2, 3, 4, 5];
    numbers.removeRange(1, 3);

    log(numbers.toString());
  }

  /// ÖNEMLİ !!!!!!!

  listremoveWhere() {
    final numbers = <String>['bir', 'iki', 'üç', 'dört'];
    numbers.removeWhere((item) => item.length <= 3);
    List<Map<String, dynamic>> myList = [
      {"isim": "Ahmet", "yas": 10},
      {"isim": "Mehmet", "yas": 18},
      {"isim": "Ahmet", "yas": 6},
      {"isim": "Hasan", "yas": 22},
      {"isim": "Süleyman", "yas": 17},
      {"isim": "Can", "yas": 19},
    ];
    myList.removeWhere((element) => element["yas"] >= 18);
    log(numbers.toString());
  }

  listreplaceRange() {
    //başlangıç ve bitiş aynen kalır diğerlerini siler, kalması istenilen sayılarda kalır.
    final numbers = [1, 2, 3, 4, 5];
    final replacements = [6, 7];
    numbers.replaceRange(1, 4, replacements);

    log(numbers.toString());
  }

  listsetAll() {
    //  String türünde son ve ilk ifade kalır ve eklemek istediklerimizi ekleriz
    final list = ['a', 'b', 'c', 'd' "he"];
    list.setAll(1, ['bee', 'sea']);

    log(list.toString());
  }

  listsetRange() {
//////////// ÖNEMLİ !!!!!!!!!!
    final list1 = <int>[1, 2, 3, 4];
    final list2 = <int>[5, 6, 7, 8, 9];

    const skipCount = 3;
    list1.setRange(1, 3, list2, skipCount);

    log(list1.toString());
  }

  listshuffle() {
    // RANDOM ÖĞELERİ KARIŞTIRIR ÖNEMLİ !!!!!!!!!!!!!!!!!!!!
    final numbers = <int>[1, 2, 3, 4, 5];
    numbers.shuffle();

    log(numbers.toString());
  }

  listskip() {
    // verilen sayodan sonrasındaki sayıları yazdırır

    final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    final sonuc = numbers.skip(4);

    log(sonuc.toString());
  }

  listskipString() {
    // verilen string ifadelerde indexe göre sonrasını alır.

    final numbers = ["mehmet", "osman", "ali", "veli", "reşat"];
    final sonuc = numbers.skip(1);

    log(sonuc.toString());
  }

  listskipWhile() {
    ////ÖNEMLİ !!!!!!!!
    /// Eğer sağladığım şart uymazsa devam etme
    List result = [];
    final names = ["su", "osman", "ali", "veli", "reşat", "sudenur"];
    names.skipWhile((value) {
      result.add(value);
      return value != "su";
    }).toList();

    log(result.toString());
  }

  List<String> listSublist() {
    List<String> subNames = [];
    List<String> names = [
      "su",
      "osman",
      "ali",
      "veli",
      "reşat",
      "sudenur",
      "Merve",
      "Berk",
      "Kaan"
    ];
    subNames = names.sublist(0, 4);
    log(subNames.toString());

    return subNames;
  }

  List<String> listTake() {
    List<String> names = [
      "su",
      "osman",
      "ali",
      "veli",
      "reşat",
      "sudenur",
      "Merve",
      "Berk",
      "Kaan"
    ];
    names = names.take(40).map((e) => e).toList();

    return names;
  }

  List<String> listWhere() {
    // filtreleme yapmak için kullanılabilir
    List<String> names = [
      "su",
      "osman",
      "ali",
      "veli",
      "reşat",
      "sudenur",
      "Merve",
      "Berk",
      "Kaan",
      "BERK"
    ];
    names = names
        .where((element) =>
            (element.toLowerCase()).contains("bErK".toLowerCase()) == true)
        .toList();

    return names;
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'List Methods'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ad = "Turan";
  List<String> list = ["Mehmet", "Ahmet", "Hasan", "Muhsin", "Mert", "Berk"];
  Map? map;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(child: Text(list.toString())),
          const SizedBox(
            height: 8,
          ),
          if (map != null) Center(child: Text(map.toString())),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          listskipWhile();

          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

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
    map = list.asMap();
    log("sonuc $map");
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

  listIndexOf() {
    // bir listedeki belirtilen elementin ilk dizini yoksa return -1 gelir
    final notes = ["do", "re" "mi", "fa", "re", "re", "re", "re ", "do"];
    var sonuc = notes.indexOf("fa");
    log(sonuc.toString());
  }

  listindexWhere() {
    final notes = ["do", "re" "mi", "fa", "re", "re", "re", "re "];
    var sonuc = notes.indexWhere((notes) => notes.startsWith("r"));
    log(sonuc.toString());
  }

  // listinsert() {
  //   final number = [1, 2, 3, 4, 5, 6];
  //   const index = 5;
  //   void sonuc = number.insert(index, 10);

  //   log(sonuc.toString());
  // }

  // listinsertAll() {
  //   final number = [1, 2, 3, 4, 5, 6];
  //   final items = [5, 7, 9, 1];
  //   var not = number.insertAll(1, items);
  //   log(not.toString());
  // }
  listjoin() {
    final planetsByMass = {0.06: 'Mercury', 0.81: 'Venus', 0.11: 'Mars'};
    final joinedNames = planetsByMass.values.join(' gezegeni--');
    log(joinedNames.toString());
  }

  // listFollowedByt() {
  //   var list2 = ["Ekmek", "su", "süt", "peynir"];

  //   final sonuc = list2.lastIndexOf("ekmek", 2);
  //   log(sonuc.toString());
  // }

  listMap() {
    final lesson = ["mat", "ing", "tr"];

    var sonuc = lesson.map((e) => lesson.toString());
    log(sonuc.toString());
  }

//   listMaptwoExample() {
//     var products = jsonDecode('''
// [
//   {"name": "Screwdriver", "price": 42.00},
//   {"name": "Wingnut", "price": 0.50}
// ]
// ''');
//     var values = products.map((product) => product['price'] as double);
//     var totalPrice = values.fold(0.0, (a, b) => a + b);
//     log(values.toString());
//   }

// ---------------

// listnoSuchMethod() {
//     final lesson = [1,2,3,4];

//     var sonuc = lesson.noSuchMethod();
//     log(sonuc.toString());
//   }

  listreduce() {
    //  number listesindeki elementleri toplar
    final numbers = <double>[10, 2, 5, 0.5];
    final result = numbers.reduce((value, element) => value + element);

    log(result.toString());
  }

  //// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  // listRemove() {
  //   final parts = ['el', 'ayak', 'kafa', 'parmak'];
  //   final retVal = parts.remove("el");

  //   log(retVal.toString());
  // }

  listRemoveAt() {
    final parts = ['el', 'ayak', 'kafa', 'parmak'];
    final retVal = parts.remove("el");

    log(retVal.toString());
  }

  listRemoveLast() {
    // son indexi yazdırır
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

    final numbers = <int>[1, 2, 3, 5, 6, 7];
    var result = numbers.skipWhile((x) => x < 5); // (5, 6, 7)
    result = numbers.skipWhile((x) => x != 3); // (3, 5, 6, 7)
    result = numbers.skipWhile((x) => x != 4); // ()
    result = numbers.skipWhile((x) => x.isOdd); // (2, 3, 5, 6, 7)
    log(result.toString());
  }
}

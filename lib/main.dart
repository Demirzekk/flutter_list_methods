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
          listGetRange();
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
}

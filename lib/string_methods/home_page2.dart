import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_list_methods/reinforcemente_xample.dart';
import 'package:flutter_list_methods/string_methods/string_methods.dart';

import '../list_methods2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "welcome to flutter";

  List<String> list = [
    "ahmet@mail.com",
    "Mehmet3040@gmail.com",
    "Aliwae@hotmail.com",
    "veli@windowslive.com",
    "Mert3990@gmail.com"
  ];

  @override
  Widget build(BuildContext context) {
    final ReinforcementExample exampledata = ReinforcementExample.instance;

    return Scaffold(
      appBar: AppBar(
        title: const Text("String Methods"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
                list.length,
                (index) => Text(
                      ("$index. ${list[index]}"),
                      textAlign: TextAlign.start,
                    )),
            const SizedBox(
              height: 12,
            ),
            Container(
                width: 150,
                height: 45,
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: ElevatedButton(
                    onPressed: exampledata.NotelistEvery(),
                    child: const Text("Try it"))),
          ],
        ),
      ),
    );
  }

  myAllMatches() {
    //TODO  Regex öğrenilecek => https://www.youtube.com/watch?v=Qat-M9Y1hxo&t=126s

    String sample = "Doğrulama kodunuz: 123456 4568";
    final reg = RegExp(r'\d{1,6}');

    var result = reg
        .allMatches(sample)
        .map((e) => e.group(0))
        .join(" ")
        .split(" ")
        .first;

    log("Sms doğrulama kodu: $result");
  }

  myTrimExample() {
    String example = "25-08-2023 ";
    String newRules = example.replaceAll("-", "/");
    if (example == newRules) {
      newRules = " TDK'ye göre tarih yazımı $newRules Şeklinde olmalıdır.";
    }
    log(newRules);
  }

  myCompareTo() {
    List<String> list = [
      "Ahmet",
      "Muhsin",
      "yavuz",
      "can",
      "Davuuut",
    ];
    list.sort((a, b) => a[0].toLowerCase().compareTo(b[0].toLowerCase()));

    log("İsim sırası: $list");
  }
}

myCodeUnits() {
  String sample = "Turan";

  log(utf8.decode([84, 117, 114, 97, 110]).toString()); //Turan
}

myPadleft() {
  String sample = "Deneme";
  var result = sample.padLeft(sample.length + 1, "Son ");
  var res = sample.padRight(sample.length + 1, " Son");
  log(result);
}

myIndexOf2() {
  String sample = "Deneme";
  // verilen pattern string ifadede ilk hangi indexte
  var result = sample.indexOf("e");
  // verilen pattern string ifadede son hangi indexte
  var result2 = sample.lastIndexOf("e");
  log(result2.toString());
}

myIndexOf() {
  List<String> list = ["Ahmet", "Muhsin", "yavuz", "can", "Davuuut", "yavuz"];
  // verilen pattern string ifadede ilk hangi indexte
  var result = list.indexOf("Yavuz");
  // verilen pattern string ifadede son hangi indexte
  var result2 = list.lastIndexOf("yavuz");
  log(result2.toString());
}

////// örnekler:



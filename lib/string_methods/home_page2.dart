import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_list_methods/coffie/coffie_model.dart';
import 'package:flutter_list_methods/country/country_capital_model.dart';
import 'package:flutter_list_methods/employee/employee_model.dart';
import 'package:flutter_list_methods/employee/employee_view_list.dart';
import 'package:flutter_list_methods/map_learn.dart/map_models.dart';
import 'package:flutter_list_methods/perfect_project.dart';
import 'package:flutter_list_methods/reinforcemente_xample.dart';

import '../account_holder/user_model.dart';
import '../coffie/coffie_view_model.dart';
import '../country/country_capital_view_list.dart';
import '../page_view_theme/page_view_model.dart';
import '../student_sample/student_view_model.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  String text = "welcome to flutter";
  List<int> sampleNumbers = [1, 2, 3, 4, 5];

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
    final PerfectProject perfec = PerfectProject();
    String? password;
    String? email;
    UserModel userkimlik = UserModel();
    userkimlik = userkimlik.copyWith(name: "Turan");

    return Scaffold(
      appBar: AppBar(
        title: Text(userkimlik.name ?? "null"),
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
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () => PageviewExample().example1(),
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



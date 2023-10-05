import 'dart:developer';

import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("String Methods"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (list != [])
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
                    onPressed: myAllMatches, child: const Text("Try it"))),
          ],
        ),
      ),
    );
  }

  myAllMatches() {
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
}

//TODO 6 haneli sayıları eşleyen regex
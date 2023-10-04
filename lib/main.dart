import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_list_methods/list_methods2.dart';

import 'shop_user/user_name_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ad = "Turan";
  List<String> list = ["Mehmet", "Ahmet", "Hasan", "Muhsin", "Mert", "Berk"];
  Map? map;
  Methods2 methods2 = Methods2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(child: Text(ad.toString())),
          const SizedBox(
            height: 8,
          ),
          if (map != null) Center(child: Text(map.toString())),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          List<Map<String, dynamic>> myList = [
            {"isim": "Ahmet", "yas": 10},
            {"isim": "Mehmet", "yas": 18},
            {"isim": "Ahmet", "yas": 6},
            {"isim": "Hasan", "yas": 22},
            {"isim": "Süleyman", "yas": 17},
            {"isim": "Can", "yas": 19},
          ];
          myList.removeWhere((element) => element["yas"] >= 18);
          ad = myList.toString();
          log(myList.toString());
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

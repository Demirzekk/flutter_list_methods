import 'package:flutter/material.dart';

import 'list_methods2.dart';

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
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_list_methods/apple_news/apple_news_ui.dart';
import 'package:flutter_list_methods/page_view_ui.dart';

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
        home: const AppleNewsUI());
  }
}

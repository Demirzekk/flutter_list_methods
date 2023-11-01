import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_methods/page_view_theme/page_view.dart';

class PageViewUi extends StatefulWidget {
  const PageViewUi({super.key});

  @override
  State<PageViewUi> createState() => _PageViewUiState();
}

class _PageViewUiState extends State<PageViewUi> {
  @override
  Widget build(BuildContext context) {
    PageviewModel.fromJson(pageViewThemeMap);
    return Scaffold(
      appBar: AppBar(
        title: Text(pageViewThemeMap["title"].toString()),
      ),
      body: Column(children: [
        ...pageViewThemeMap.map((Map<String, dynamic> item) {
          PageviewModel.fromJson(item);
          return ListTile()
        })
      ]),
    );
  }
}

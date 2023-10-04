import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_list_methods/sublist_example.dart/sublist_item.dart';

class LazyPaging extends StatefulWidget {
  const LazyPaging({super.key});

  @override
  State<LazyPaging> createState() => _LazyPagingState();
}

class _LazyPagingState extends State<LazyPaging> {
  GetNameList namelist = GetNameList();
  List<String> nameSublist = [];
  int selectedIndex = 0;
  int sublistButtonsLength = 0;

  @override
  void initState() {
    super.initState();
    init();
    calculateListLength(list: namelist.toNames);
  }

  init() {
    nameSublist = namelist.newListMethod(
      min: 0,
    );

    setState(() {});
    return nameSublist;
  }

  int calculateListLength({List list = const []}) {
    sublistButtonsLength = (list.length / 5).ceilToDouble().toInt();
    log("sublist lenght: $sublistButtonsLength");
    setState(() {});
    return sublistButtonsLength;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(nameSublist.toString())),
          Wrap(
            children: [
              ...List.generate(sublistButtonsLength, (index) {
               
                return CustomContainer(
                  ontap: () {
                    selectedIndex = index;
                    if (selectedIndex == 0) {
                      init();
                    } else {
                      nameSublist = namelist.newListMethod(
                        min: nameSublist.length * index,
                      );
                    }

                    setState(() {});
                  },
                  title: (index + 1).toString(),
                  color: selectedIndex == index ? Colors.blue : Colors.amber,
                );
              }).toList(),
            ],
          )
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.title,
      required this.ontap,
      this.color = Colors.amber});
  final String title;
  final void Function()? ontap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          width: 50,
          height: 50,
          child: Center(child: Text(title.toString())),
        ),
      ),
    );
  }
}

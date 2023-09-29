import 'package:flutter/material.dart';
import 'package:flutter_list_methods/sublist_example.dart/sublist_item.dart';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

int? count;

class _LearningState extends State<Learning> {
  GetNameList namelist = GetNameList();

  List<String> newListMethod() {
    List<String> firstlist = [];

    if (count == 1) {
      setState(() {});
      firstlist = GetNameList().toNames.sublist(0, 5);
    } else if (count == 2) {
      firstlist = GetNameList().toNames.sublist(5, 10);
    } else if (count == 3) {
      firstlist = GetNameList().toNames.sublist(10, 15);
    } else if (count == 4) {
      firstlist = GetNameList().toNames.sublist(15, 20);
    }
    return firstlist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(newListMethod().toString())),
          Row(
            children: [
              CustomContainer(
                ontap: () {
                  count = 1;
                  setState(() {});
                },
                title: "1",
              ),
              CustomContainer(
                ontap: () {
                  setState(() {});
                  count = 2;
                },
                title: "2",
              ),
              CustomContainer(
                ontap: () {
                  count = 3;
                  setState(() {});
                },
                title: "3",
              ),
              CustomContainer(
                ontap: () {
                  count = 4;
                  setState(() {});
                },
                title: "4",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.title, required this.ontap});
  final String title;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(20)),
          width: 50,
          height: 50,
          child: Center(child: Text(title.toString())),
        ),
      ),
    );
  }
}

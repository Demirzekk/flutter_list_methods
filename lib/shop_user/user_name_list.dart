import 'package:flutter/material.dart';
import 'package:flutter_list_methods/shop_user/user_items.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  UserNameList names = UserNameList();
  final int countText = 2;
  List<String> splittedNamesList = [];
  int selectedIndex = 0;
  int beginListLenght = 0;
  List<int> limitNumbers = [];
  int limit = 5;

  @override
  void initState() {
    super.initState();
    limitNumbers = [2, 4, 5, 6, 7, 8, 9, 10, names.userLists.length];
    initFunction();
    calculateListLenght(list: names.userLists);
  }

  initFunction() {
    splittedNamesList = names.allocate(begin: 0, limit: limit);
    setState(() {});

    return splittedNamesList;
  }

  int calculateListLenght({List list = const []}) {
    beginListLenght = (list.length / limit).ceilToDouble().toInt();
    setState(() {});
    return beginListLenght;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(splittedNamesList.toString()),
            Wrap(
              children: [
                ...List.generate(beginListLenght, (index) {
                  return UserCustomContainer(
                    ontap: () {
                      selectedIndex = index;
                      if (selectedIndex == 0) {
                        initFunction();
                      } else {
                        splittedNamesList = names.allocate(
                            begin: splittedNamesList.length * index,
                            limit: limit);
                      }
                      setState(() {});
                    },
                    title: (index + 1).toString(),
                    color: selectedIndex == index
                        ? const Color.fromARGB(195, 138, 190, 230)
                        : Colors.red.shade100,
                  );
                })
              ],
            ),
            Container(
              width: 180,
              height: 50,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<int>(
                    hint: Text("Seçilen Limit: $limit"),
                    items: limitNumbers
                        .map((e) => DropdownMenuItem(
                            value: e, child: Text(e.toString())))
                        .toList(),
                    onChanged: (val) {
                      limit = val ?? 5;
                      calculateListLenght(list: names.userLists);
                      setState(() {});
                    }),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Text(
                "  ${selectedIndex + 1}. sayfa  \n bu sayfa : ${splittedNamesList.length} kişi \n total : ${names.userLists.length} ")
          ],
        ),
      ),
    );
  }
}

class UserCustomContainer extends StatelessWidget {
  const UserCustomContainer(
      {super.key,
      required this.color,
      required this.title,
      required this.ontap});
  final String title;
  final Color? color;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}

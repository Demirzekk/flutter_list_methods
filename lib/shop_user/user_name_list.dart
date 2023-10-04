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
  List<String> nameSplit = [];
  int selectedIndex = 0;
  int beginListLenght = 0;

  @override
  void initState() {
    initFunction();
    calculateListLenght(list: names.userLists);
    super.initState();
  }

  initFunction() {
    nameSplit = names.allocate(begin: 0);
    setState(() {});

    return nameSplit;
  }

  int calculateListLenght({List list = const []}) {
    beginListLenght = (list.length / 5).ceilToDouble().toInt();
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
            Text(nameSplit.toString()),
            Wrap(
              children: [
                ...List.generate(beginListLenght, (index) {
                  int growingIndex = index + 1;
                  return UserCustomContainer(
                    ontap: () {
                      selectedIndex = index;
                      if (selectedIndex == 0) {
                        initFunction();
                      } else {
                        nameSplit = names.allocate(
                            begin: nameSplit.length * index,
                            finish: (nameSplit.length) * growingIndex);
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
            const SizedBox(
              height: 200,
            ),
            Text(
                "  ${selectedIndex + 1}. sayfa  \n bu sayfa : ${nameSplit.length} kişi \n total : ${names.userLists.length} ")
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

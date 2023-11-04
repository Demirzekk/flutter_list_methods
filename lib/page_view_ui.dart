import 'package:flutter/material.dart';
import 'package:flutter_list_methods/page_view_theme/page_view.dart';


class PageViewUI extends StatefulWidget {
  const PageViewUI({super.key});

  @override
  State<PageViewUI> createState() => _PageViewUIState();
}

class _PageViewUIState extends State<PageViewUI> {
  PageViewModel? model;

  @override
  void initState() {
    super.initState();
    getPageViewData();
  }

  Future getPageViewData() async {
    await Future.delayed(const Duration(seconds: 3));
    model = PageViewModel.fromJson(pageViewThemeMap);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<Desc?>? desc = model?.desc?.toSet().toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // title: Text(
        //   pageViewThemeMap["title"].toString(),
        // ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: model == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Text(
                      (model?.title ?? "null"),
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    Column(
                      children: [
                        ...desc?.map((Desc? e) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: ListTile(
                                  leading: Icon(e?.icon),
                                  title: Text(e?.title ?? "null"),
                                  subtitle: Text(e?.subtitle ?? "null"),
                                ),
                              );
                            }).toList() ??
                            [],
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor:
                                Color((model?.button?.buttonColor ?? 0))),
                        onPressed: () {
                          if (model?.button?.buttonLink == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Route bulunamdı!")));
                            return;
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      model!.button!.buttonLink!));
                        },
                        child: InkWell(onTap: (){ 
                          
                          
                        } , child: Text(model?.button?.buttonTitle ?? "null")),
                      ),
                    )
                  ]),
      ),
    );
  }
}

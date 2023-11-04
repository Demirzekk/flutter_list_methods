import 'package:flutter/material.dart';
import 'package:flutter_list_methods/apple_news/apple_news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class AppleNewsUI extends StatefulWidget {
  const AppleNewsUI({super.key});

  @override
  State<AppleNewsUI> createState() => _AppleNewsUIState();
}

class _AppleNewsUIState extends State<AppleNewsUI> {
  AppleNewsModel? appleModel;

  @override
  void initState() {
    setState(() {
      appleModel = AppleNewsModel.fromJson(appleNewsMap);
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(appleModel?.bigLogo ?? ""),
                      fit: BoxFit.cover))),
          Center(
              child: Text(
            appleModel?.title1 ?? "",
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.w900),
          )),
          Center(
              child: Text(
            appleModel?.title2 ?? "",
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.red, fontWeight: FontWeight.w900),
          )),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 90,
              left: 90,
            ),
            child: Text(appleModel?.subtitle ?? ""),
          ),
          const SizedBox(
            height: 150,
          ),
          Icon(
            appleModel?.icon ?? Icons.abc,
            size: 50,
            color: Colors.pink,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 90,
              left: 90,
            ),
            child: Text(
              appleModel?.desc ?? "null",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            appleModel?.seeLink?.linkText ?? "ndsdsdull",
            style: TextStyle(color: Color(appleModel?.seeLink?.linkColor ?? 0)),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(appleModel?.button?.buttonColor ?? 0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            appleModel?.button?.buttonRoute ??
                            const SizedBox.shrink()));
              },
              child: Text(
                appleModel?.button?.buttonText ?? "",
              ))
        ],
      ),
    );
  }
}

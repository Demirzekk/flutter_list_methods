import 'dart:developer';

import 'package:flutter/gestures.dart';
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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 190, bottom: 5),
            child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    appleModel?.bigLogo ?? "",
                  ),
                  fit: BoxFit.cover,
                ))),
          ),
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
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Color(appleModel?.titleLinkColor ?? 0),
                fontWeight: FontWeight.w900),
          )),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 90,
              left: 90,
            ),
            child: Text(
              appleModel?.subtitle ?? "",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black),
            ),
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
            padding: const EdgeInsets.symmetric(
              horizontal: 80,
            ),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: appleModel?.desc ?? "null",
                    style: Theme.of(context).textTheme.bodySmall,
                    children: [
                      TextSpan(
                          text: appleModel?.seeLink?.linkText ?? "",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              log("Text'e tıklandı: ${appleModel?.seeLink?.linkUrl}");
                              launchUrl(
                                  Uri.parse(appleModel?.seeLink?.linkUrl ??
                                      "https://www.google.com.tr"),
                                  mode: LaunchMode.externalApplication);
                            },
                          style: TextStyle(
                              color:
                                  Color(appleModel?.seeLink?.linkColor ?? 0)))
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(appleModel?.button?.buttonColor ?? 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
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
                  )),
            ),
          )
        ],
      ),
    );
  }
}

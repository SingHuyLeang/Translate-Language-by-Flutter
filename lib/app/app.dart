import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_language/translate/translate.dart';

class App extends StatelessWidget {
  App({super.key});
  final translater = Get.put(Translater());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "hello".tr,
          style: const TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("good_bye".tr, style: const TextStyle(fontSize: 26)),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                color: Colors.blue,
                child: const Text("ខ្មែរ", style: TextStyle(fontSize: 26)),
                onPressed: () async {
                  translater.switchLanguage(english: false.obs);
                  Get.updateLocale(const Locale("KH", "KH"));
                },
              ),
              const SizedBox(width: 50),
              CupertinoButton(
                color: Colors.green,
                child: const Text(
                  "English",
                  style: TextStyle(fontSize: 26),
                ),
                onPressed: () async {
                  translater.switchLanguage(english: true.obs);
                  Get.updateLocale(const Locale("en", "US"));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

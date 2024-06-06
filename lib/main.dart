import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_language/app/app.dart';
import 'package:translate_language/translate/language_model.dart';
import 'package:translate_language/translate/translate.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final translater = Get.put(Translater());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LanguageModel(),
      locale: translater.english.value
          ? const Locale("en", "US")
          : const Locale("KH", "KH"),
      home: App(),
    );
  }
}

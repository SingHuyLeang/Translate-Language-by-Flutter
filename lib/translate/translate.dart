import 'dart:developer';

import 'package:get/get.dart';

class Translater extends GetxController {
  RxBool english = true.obs;
  switchLanguage({required RxBool english}) async {
    this.english = english;
    log('Language is english ${english.value}');
    update();
  }
}

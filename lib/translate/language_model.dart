import 'package:get/get.dart';

class LanguageModel extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          "hello": "Hello",
          "good_bye": "Good Bye",
        },
        "KH": {
          "hello": "សួរស្ដី",
          "good_bye": "ជម្រាបលា",
        },
      };
}

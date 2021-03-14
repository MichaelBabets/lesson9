import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      "title": "GetX test en",
    },
    'ru': {
      'title': 'Тест GetX ру',
    },
    'uk': {
      'title': 'Тест GetX укр',
    },
  };
}

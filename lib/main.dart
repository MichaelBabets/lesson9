import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson9/utils/routes.dart';
import 'package:lesson9/utils/translation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      getPages: GetPages.allGetPages,
    );
  }
}



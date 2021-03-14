
import 'package:get/get.dart';
import 'package:lesson9/utils/injection.dart';
import 'package:lesson9/my_page/my_page.dart';
import 'package:lesson9/second_page/second_page.dart';

class GetPages {
  static List<GetPage> allGetPages = [
    GetPage(
      name: '/',
      page: () => MyHomePage(),
      binding: Injections(),
    ),
    GetPage(
      name: Routes.secondPage,
      page: () => SecondPage(),
      binding: Injections(),
    ),
  ];
}

class Routes {
  static const secondPage = '/secondPage';
}


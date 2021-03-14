import 'package:get/get.dart';
import 'package:lesson9/my_page/my_controller.dart';
import 'package:lesson9/second_page/second_page_controller.dart';

class Injections extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
    Get.lazyPut(() => SecondPageController());
  }
}
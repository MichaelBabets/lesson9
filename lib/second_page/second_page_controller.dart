import 'package:get/get.dart';
import 'package:lesson9/my_page/my_controller.dart';

class SecondPageController extends GetxController{

  final mainController = Get.find<MyController>();

  var secondCounter = 0.obs;

  getDataFromMainController(){
    secondCounter.value = mainController.counter.value;
  }
}
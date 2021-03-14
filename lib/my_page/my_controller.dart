import 'package:get/get.dart';

class MyController extends GetxController{
  var counter = 0.obs;

  increment(){
    counter.value++;
  }
}
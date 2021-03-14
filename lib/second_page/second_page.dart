import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson9/second_page/second_page_controller.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final secondController = Get.put(SecondPageController());

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((){
              return Text(
                  '${secondController.secondCounter}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            SizedBox(height: 15,),
            ElevatedButton(
              child: Text('get counter from previous page'),
              onPressed: (){
                secondController.getDataFromMainController();
              },
            ),
          ],
        ),
      ),
    );
  }
}

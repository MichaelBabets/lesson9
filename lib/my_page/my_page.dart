import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson9/my_page/my_controller.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final MyController controller = Get.put(MyController());

    print(Get.deviceLocale);

    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx((){
              return Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            SizedBox(height: 15,),
            ElevatedButton(
              child: Text('go to Second Page'),
              onPressed: (){
                Get.toNamed('/secondPage');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

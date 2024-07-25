import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/exampleThree/switchController.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
 ExampleThree exampleThree = Get.put(ExampleThree());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Switch Notification Practice",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Notification",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
            Obx(()=>Switch(value:exampleThree.notification.value , onChanged: (value){
              exampleThree.switchNotification(value);

            })),
          ],
        ),
      )
    );
  }
}

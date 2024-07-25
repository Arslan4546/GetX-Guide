import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/IntroStateManagement/counterCountrol.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final Countercountrol controller = Get.put(Countercountrol());



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("State Management Practice",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(()=> Text(controller.counter.toString(),style: const TextStyle(
          fontSize: 60,
        ),),),

      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          controller.cCountrol();
        },

      ),
      );

  }
}

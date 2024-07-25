import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidth extends StatefulWidget {
  const HeightWidth({super.key});

  @override
  State<HeightWidth> createState() => _HeightWidthState();
}

class _HeightWidthState extends State<HeightWidth> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height * 1;
    // final width = MediaQuery.of(context).size.width * 1;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Height & Width Practice",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * .3,
            // width: MediaQuery.of(context).size.width * .8,
            height: Get.height*.3,
            width: Get.width*.8,
            color: Colors.red,
            child: const Center(
              child: Text("Center"),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * .1,
            // width: MediaQuery.of(context).size.width * .8,
            height: Get.height*.1,
            width: Get.width*.8,
            color: Colors.green,
            child:const  Center(
              child: Text("Center"),
            ),
          )
        ],
      ),
    );
  }
}

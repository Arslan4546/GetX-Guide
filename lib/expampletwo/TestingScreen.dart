import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/expampletwo/opacitycontroller.dart';

class Testingscreen extends StatefulWidget {
  const Testingscreen({super.key});

  @override
  State<Testingscreen> createState() => _TestingscreenState();
}

class _TestingscreenState extends State<Testingscreen> {

   Opacitycontroller opacitycontroller = Get.put(Opacitycontroller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Opacity Practice",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
         Obx(()=> Container(
           height: 200,
           width: 200,
           color: Colors.red.withOpacity(opacitycontroller.opacity.value),

         )
         ),
          Obx(()=> Slider(
            activeColor: Colors.red,
              value:opacitycontroller.opacity.value , onChanged:(value){
            opacitycontroller.setOpacity(value);

          } )
          ),
        ],
      ),
    );
  }
}

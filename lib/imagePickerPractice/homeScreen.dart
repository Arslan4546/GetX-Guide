import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'imagePickerController.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {

  Imagepickercontroller imagepickercontroller = Get.put(Imagepickercontroller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Image Picker Practice",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Obx((){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                backgroundImage: imagepickercontroller.imagePath.isNotEmpty ?
                FileImage(File(imagepickercontroller.imagePath.toString())) : null,
              ),
              TextButton(onPressed: (){
                imagepickercontroller.GetImage();
              }, child:const Text("Pick Image"))
            ],
          );
        }

        ),
      )
    );
  }
}

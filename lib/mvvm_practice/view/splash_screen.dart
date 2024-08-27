import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/mvvm_practice/data/exceptions.dart';
import 'package:getxdemo/mvvm_practice/utils/utils_file.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  Text("نام".tr,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
           floatingActionButton: FloatingActionButton(onPressed: (){

            // throw ServerExceptions("Bad Server");

             UtilsClass.toastMessage("Arslan Tariq");
             UtilsClass.toastMessageCenter("Arslan");


           },
           backgroundColor: Colors.blue,),
    );
  }
}

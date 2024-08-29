import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/mvvm_practice/view/splash_services/SplashServies.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  Splashservies splashservies = Splashservies();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashservies.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text("Welcome".tr,style: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),),
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxdemo/expampletwo/TestingScreen.dart';

import 'package:getxdemo/height&width.dart';
import 'IntroStateManagement/home.dart';
import 'dart&lightTheme.dart';
import 'navigations&routes/screen1.dart';
import 'navigations&routes/screen2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  const  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: const Locale("en", "US"),
      // fallbackLocale: const Locale("en", "US"),
      // translations: Languages(),
      home:   Testingscreen(),
      // getPages: [
      //   GetPage(name: "/S1", page:() => const Screen1()),
      //   GetPage(name: "/S2", page:() => Screen2()),
      // ],





    );
  }
}

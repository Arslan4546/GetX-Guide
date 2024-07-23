import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
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
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Screen1(),
      getPages: [
        GetPage(name: "/S1", page:() => const Screen1()),
        GetPage(name: "/S2", page:() =>  Screen2()),
      ],
    );
  }
}

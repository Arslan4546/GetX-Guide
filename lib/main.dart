import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxdemo/expampletwo/TestingScreen.dart';
import 'package:getxdemo/favoritePractice/homeScreen.dart';

import 'package:getxdemo/height&widthPractice/height&width.dart';
import 'package:getxdemo/loginApiPractice/mainScreen.dart';
import 'IntroStateManagement/home.dart';
import 'ThemePractice/dart&lightTheme.dart';
import 'exampleThree/testScreen.dart';
import 'imagePickerPractice/homeScreen.dart';
import 'mvvm_practice/resources/localization/translations.dart';
import 'mvvm_practice/resources/routes.dart';
import 'mvvm_practice/view/splashS.dart';
import 'mvvm_practice/view/splash_screen.dart';
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
    return    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //locale: const Locale("en", "US"),
      locale: const Locale("en", "US"),
      fallbackLocale: const Locale("en", "US"),
      translations: Translate(),
      home:   const SplashS(),
      // getPages: [
      //   GetPage(name: "/S1", page:() => const Screen1()),
      //   GetPage(name: "/S2", page:() => Screen2()),
      // ],

      getPages:
        AppRoutes.appRoutes(),







    );
  }
}

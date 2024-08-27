import 'package:get/get.dart';
import 'package:getxdemo/mvvm_practice/resources/routes_names.dart';
import 'package:getxdemo/mvvm_practice/view/splash_screen.dart';


class AppRoutes{
  static appRoutes () => [

    GetPage(name: RoutesNames.splashScreenRoute, page:()=> const SplashScreen(),transitionDuration: const Duration(milliseconds: 12),
      transition: Transition.leftToRightWithFade,
    )
  ];
}
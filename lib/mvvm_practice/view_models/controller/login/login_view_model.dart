import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxdemo/favoritePractice/homeScreen.dart';
import 'package:getxdemo/mvvm_practice/models/loginModels/user_model.dart';
import 'package:getxdemo/mvvm_practice/resources/routes.dart';
import 'package:getxdemo/mvvm_practice/resources/routes_names.dart';
import 'package:getxdemo/mvvm_practice/utils/utils_file.dart';
import 'package:getxdemo/mvvm_practice/view_models/controller/user_preferences/user_preferences_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../repository/login_repo/login_Repository.dart';

class LoginViewModel extends GetxController{

userPreference userP = userPreference();

  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;


  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;



  void login(){



    Map data = {
      "email" : emailController.value.text,
      "password" : passwordController.value.text,


    };

    _api.loginAPI(data).then((value){
      if(value["error"== "user not found"]){
        UtilsClass.snackBar("Login",value["error"]);

      }else{

      UserModel userModel = UserModel(
        isLogin: true,

        token: value["token"],
      );
        userP.saveUser(userModel).then((value
        ){
           Get.toNamed(RoutesNames.homeScreenRoute);

        });
      }




    }).onError((error,StackTrace){

UtilsClass.snackBar("Error", error.toString());





    });
  }

}
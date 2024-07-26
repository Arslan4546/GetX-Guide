import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart';

class Logincontroller extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void getLogin() async {
      loading.value = true;

      try{

     final response = await post(Uri.parse("https://reqres.in/api/login"),

     body: {
       "email": emailController.value.text,
       "password": passwordController.value.text,
     });

     var data = jsonDecode(response.body);
     if(response.statusCode==200){
       loading.value = false;
       Get.snackbar("Login Successful", "Congratulations");

     }else{

loading.value = true;
Get.snackbar("Login Failed", data["error"]);
loading.value = false;


     }


      }
      catch(e){


Get.snackbar("Exception", e.toString());

      }

  }

}
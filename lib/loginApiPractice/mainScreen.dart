import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/loginApiPractice/loginController.dart';
import 'package:image_picker/image_picker.dart';



class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {

  Logincontroller controller = Get.put(Logincontroller());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Login API Practice",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                controller: controller.passwordController.value,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
              SizedBox(height: 20,),
              Obx((){
                return InkWell(
                  onTap: (){
         controller.getLogin();
                  },
                  child:controller.loading.value ? const CircularProgressIndicator() : Container(
                    height: 45,
                    color: Colors.red,
                    child: const Center(
                    child: Text(
                    "Login",style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                ),
                );
              })
            ],
          ),
        )
    );
  }
}

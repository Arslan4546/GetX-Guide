
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/mvvm_practice/resources/components/component2.dart';
import 'package:getxdemo/mvvm_practice/utils/utils_file.dart';
import 'package:getxdemo/mvvm_practice/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

   final LoginVM = Get.put(LoginViewModel());

   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final bool loading = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: Text("Login".tr, style: TextStyle(
          color: Colors.white,

        ),),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                  Form(
                    key : _formKey,

                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              UtilsClass.snackBar("Email","Enter your Email");
                            }
                          },
                          onFieldSubmitted: (value){
                            UtilsClass.focusChange(context, LoginVM.emailFocusNode.value,LoginVM.passwordFocusNode.value,);

                          },
                          controller: LoginVM.emailController.value,
                          focusNode: LoginVM.emailFocusNode.value,
                          decoration: InputDecoration(

                              hintText: "EmailHint".tr,

                              border: OutlineInputBorder(


                              ),

                          ),
                        ),

                        SizedBox(height: 20,),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter:  "*",

                          validator: (value){
                            if(value!.isEmpty){
                              UtilsClass.snackBar("Password","Enter your Password");
                            }
                          },
                          controller: LoginVM.passwordController.value,
                          focusNode: LoginVM.passwordFocusNode.value,
                          decoration: InputDecoration(
                              hintText: "PasswordHint".tr,
                              border: OutlineInputBorder(

                              )
                          ),
                        ),

                      ],
                    ),
                  ),
            SizedBox(height: 40,),
RoundButtonWidget(

          buttonColor: Colors.teal,
          textColor: Colors.white,

          height: 50, width: 100, title:"Login", onPressed:(){
        if(_formKey.currentState!.validate()){

        }else{

        }

      })

          ],
        ),
      ),
    );
  }
}


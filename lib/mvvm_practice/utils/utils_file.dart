import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getxdemo/mvvm_practice/resources/colors.dart';
class UtilsClass {
   static void focusChange(BuildContext context , FocusNode current, FocusNode next){
     current.unfocus();
     FocusScope.of(context).requestFocus(next);



   }

   static void toastMessage(String message){

   Fluttertoast.showToast(msg: message,backgroundColor: AppColors.blackColor,

     gravity: ToastGravity.CENTER,

   );

   }
   static void toastMessageCenter(String message){

     Fluttertoast.showToast(msg: message,backgroundColor: AppColors.blackColor,
       gravity: ToastGravity.CENTER,
     );

   }

   static void snackBar(String title , String message){
     Get.snackbar(
       title,
       message,
     );
   }

}
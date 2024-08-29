import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/APIstatus/response/status.dart';
import 'package:getxdemo/mvvm_practice/resources/components/component1.dart';
import 'package:getxdemo/mvvm_practice/view_models/controller/home/home_view_model.dart';

import '../models/home/user_list_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){


        switch(homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
         if(homeController.error.value == "No internet"){
           return InternetExceptionWidget(onpressed: (){
             homeController.UserList();
           });

         }else{
           return Center(
             child: Text(homeController.error.toString()),
           );
         }

          case Status.COMPLETE:
            return ListView.builder(
                itemCount: homeController.UserList.value.data.length,
                itemBuilder: (context , index){
                  return Card(
                    child: ListTile(
                      title: Text(homeController.UserList.value.data![index].firstName.toString(),
                      subtitle:  Text(homeController.UserList.value.data![index].firstName.toString(),
                    ),
                  );
                }
            );


        }

        return SizedBox();
      }

      ),

    );
  }
}


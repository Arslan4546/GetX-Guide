import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/favoritePractice/favoriteController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _TestingscreenState();
}

class _TestingscreenState extends State<HomeScreen> {

Favoritecontroller favoritecontroller = Get.put(Favoritecontroller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Favorite Practice",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount:favoritecontroller.fruitList.length,
        itemBuilder: (context, index){
            return Card(
              child:  ListTile(
                onTap: (){

                  if(favoritecontroller.tempList.contains(favoritecontroller.fruitList[index].toString())){

                 favoritecontroller.removeController(favoritecontroller.fruitList[index].toString());

                  }else{
                    favoritecontroller.addController(favoritecontroller.fruitList[index].toString());
                  }
                },
                title: Text(favoritecontroller.fruitList[index].toString()),
                trailing: Obx(()=>Icon(Icons.favorite,
                  color: favoritecontroller.tempList.contains(favoritecontroller.fruitList[index].toString()) ? Colors.red : Colors.white,),)
              ),
            );

        },

      ),
    );
  }
}

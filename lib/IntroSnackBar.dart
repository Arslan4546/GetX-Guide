import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("SnackBar Practice",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
            centerTitle: true,
          ),
          body: const Column(
            children: [],
          ),
          floatingActionButton: FloatingActionButton(
                 backgroundColor: Colors.blue,
              onPressed: () {

                Get.snackbar(
                  "welcome To This Channel", "Please Subscribe My Channel",
                    backgroundColor: Colors.blue,
                    colorText: Colors.white,

                    mainButton: TextButton(
                        onPressed: () {}, child: const Text("click here!",style: TextStyle(
                      color: Colors.white,
                    ),)),
                  snackPosition: SnackPosition.BOTTOM,


                );
              },
                 child:  const Icon(Icons.add,color: Colors.white,))),
    );
  }
}

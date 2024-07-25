
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class trans extends StatefulWidget {
  const trans({super.key});

  @override
  State<trans> createState() => _transState();
}

class _transState extends State<trans> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Translation Languages",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),

          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                OutlinedButton(
                    onPressed: (){
                      Get.updateLocale(const  Locale("en", "US"));


                    },
                    child: const Text("English")),
                const SizedBox(width: 10,),
                OutlinedButton(

                    onPressed: (){
                      Get.updateLocale(const  Locale("ur", "Pk"));
                    },
                    child: const Text("Urdu")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

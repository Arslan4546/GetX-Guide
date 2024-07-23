import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightDarkTheme extends StatefulWidget {
  const LightDarkTheme({super.key});

  @override
  State<LightDarkTheme> createState() => _LightDarkThemeState();
}

class _LightDarkThemeState extends State<LightDarkTheme> {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Dark And Light Theme",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
        ),
        body: Column(
          children: [

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Card(
                 child: ListTile(
                   title: const Text("Get defaultDialogue Box"),
                   subtitle: const Text("Get defaultDialogue Box With GetX "),
                   onTap: (){
                     Get.defaultDialog(
                       title: "Delete Message",
                       middleText: "Are You Sure You Want To Delete This Message",
                       titlePadding: const EdgeInsets.all(20),
                       contentPadding: const EdgeInsets.all(20),
                       //   textConfirm:"Yes",
                       // textCancel: "Cancel",
                       confirm: TextButton(onPressed: (){
                         Navigator.pop(context);
                         //Get.back();
                       },
                           child: const Text('oK')),
                         cancel: TextButton(onPressed: (){
                          Navigator.pop(context);
                          // Get.back();
                         },
                             child: const Text('Cancel')),
                       // content: Column(
                       //   children: [
                       //     Text("Arslan"),
                       //     Text("Arslan"),
                       //     Text("Arslan"),
                       //     Text("Arslan"),
                       //     Text("Arslan"),
                       //     Text("Arslan"),
                       //   ],
                       // )


                     );
                   },
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Card(
                 child: ListTile(
                   title: const Text("Get BottomSheet"),
                   subtitle: const Text("Get BottomSheet With GetX "),
                   onTap: (){
                     Get.bottomSheet(
                    Container(
                      decoration: const  BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),

                      child:  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                             onTap: (){
                               Get.changeTheme(ThemeData.light());
                             },
                              leading: const Icon(Icons.light_mode,color: Colors.white,),
                              title: const Text("Light Theme",style: TextStyle(
                                color: Colors.white
                              ),),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                              leading: const Icon(Icons.dark_mode,color: Colors.white,),
                              title: const Text("Dark Theme",style: TextStyle(color: Colors.white),),

                            ),
                          ),
                        ],
                      ),
                    )
                     );
                   },
                 ),
               ),
             ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatefulWidget {
  //final String name;
  var  name;
   Screen2({super.key, this.name});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        // title:  Text("Screen 2 ${widget.name}",style: TextStyle(
        //     color: Colors.white,
        //     fontWeight: FontWeight.bold
        // ),),
        title:  Text('Screen 2 ' + Get.arguments[0]  ,style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
             // Navigator.pop(context);
              Get.back();
            }, child:
            const Text("Back To Screen 1"))
          ],
        ),
      ),
    );
  }
}

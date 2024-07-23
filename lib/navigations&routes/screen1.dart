import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Screen 1",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){

              // Navigator.push(context,MaterialPageRoute(builder: (context)=> const Screen2()));
              //Get.to(const Screen2(name: "Arslan Tariq",));
                Get.toNamed("/S2",arguments: [
                  "Hannan Tariq",
                  "Mannan Tariq",
                ] );

            }, child:
            const Text("Go To Screen 2"))
          ],
        ),
      ),
    );
  }
}

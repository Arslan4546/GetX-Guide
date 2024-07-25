import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';



class Countercountrol extends GetxController{


  RxInt counter = 1.obs;
  cCountrol(){
    counter.value++;


  }
}
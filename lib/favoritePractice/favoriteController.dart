import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Favoritecontroller extends GetxController{

  RxList<String> fruitList = ["orange", "mango", "Banana"].obs;
  RxList tempList = [].obs;

  addController(String value){
    tempList.add(value);
  }
  removeController(String value){
    tempList.remove(value);
  }
}

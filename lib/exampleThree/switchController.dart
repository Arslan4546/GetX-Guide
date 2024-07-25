import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ExampleThree extends GetxController {
  RxBool notification = false.obs;

  switchNotification(bool value){
    notification.value = value;

  }

}
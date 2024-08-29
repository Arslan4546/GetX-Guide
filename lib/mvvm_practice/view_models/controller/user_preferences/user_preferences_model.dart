import 'package:get/get.dart';
import 'package:getxdemo/mvvm_practice/models/loginModels/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class userPreference {

  Future<bool> saveUser(UserModel responseModel)async{

         SharedPreferences sp = await SharedPreferences.getInstance();
         sp.setString("token", responseModel.token.toString());
         sp.setBool("isLogin", responseModel.isLogin!);
         return true;

  }


  Future<UserModel> GetUser()async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString("token");
    bool? isLogin = sp.getBool("isLogin");

    return UserModel(
      token: token,
          isLogin: isLogin
    );

  }

  Future<bool> removeUser() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;

  }

}
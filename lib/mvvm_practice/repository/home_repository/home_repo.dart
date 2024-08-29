import 'package:getxdemo/mvvm_practice/models/loginModels/user_model.dart';
import 'package:getxdemo/mvvm_practice/resources/appUrls/appUrls.dart';

import '../../network/networkAPI_Services.dart';

class HomeRepository {

  final _apiService = NetworkapiServices();
  Future<UserModel> UserAPI( ) async {

    dynamic response = await _apiService.getAPI(Appurls.userModel);
    return UserModel.fromJson(response);

  }
}
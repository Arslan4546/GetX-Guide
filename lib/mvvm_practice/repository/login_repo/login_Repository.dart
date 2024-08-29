import 'package:getxdemo/mvvm_practice/network/networkAPI_Services.dart';
import 'package:getxdemo/mvvm_practice/resources/appUrls/appUrls.dart';

class LoginRepository {

  final _apiService = NetworkapiServices();
  Future<dynamic> loginAPI(var data ) async {
    dynamic response = await _apiService.postAPI(data,Appurls.LoginURl);
    return response;

  }
}
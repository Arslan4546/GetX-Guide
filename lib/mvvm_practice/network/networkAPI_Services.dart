import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:getxdemo/mvvm_practice/network/baseAPI_Services.dart';
import 'package:http/http.dart' as http;
import '../data/exceptions.dart';


class NetworkapiServices extends BaseapiServices {

  @override
  Future<dynamic> getAPI(String url) async {


    if (kDebugMode) {
      print(url);
    }

    dynamic jsonResponse;

    try{

      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));


      jsonResponse = returnResponse(response);
    } on SocketException {

      throw InternetExceptions("");
    } on TimeOutExceptions{
      throw TimeOutExceptions("");
    }
  }


  @override
  Future<dynamic> postAPI(var data,String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic jsonResponse;

    try{

      final response = await http.post(Uri.parse(url),
      body: jsonEncode(data),
      ).timeout(const Duration(seconds: 10));


      jsonResponse = returnResponse(response);
    } on SocketException {

      throw InternetExceptions("");
    } on TimeOutExceptions{
      throw TimeOutExceptions("");
    }
  }

  dynamic returnResponse(http.Response response){

    switch(response.statusCode){
      case 200 :
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400 :
        throw InvalidURLException();

      default:
        throw FetchingDataExceptions("Error While Fetching Data!" +response.statusCode.toString());

    }

  }
}


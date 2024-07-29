class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message,this._prefix]);

  String toString(){
    return "$_message$_prefix";

  }


}

class InternetExceptions extends AppExceptions{

  InternetExceptions([String? message]): super (message, "");


  }

class TimeOutExceptions extends AppExceptions {

  TimeOutExceptions([String? message]) : super (message, "Time OUt");
}

class ServerExceptions extends AppExceptions {

  ServerExceptions([String? message]) : super (message, "Server Error!");
}
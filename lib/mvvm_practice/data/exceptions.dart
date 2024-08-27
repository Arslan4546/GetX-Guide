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

  TimeOutExceptions([String? message]) : super (message, "");
}

class ServerExceptions extends AppExceptions {

  ServerExceptions([String? message]) : super (message, "");
}

class FetchingDataExceptions extends AppExceptions {

  FetchingDataExceptions([String? message]) : super (message, "Error While Fetching Data");
}

class InvalidURLException extends AppExceptions {

  InvalidURLException([String? message]) : super (message, "Invalid URL");
}


import 'dart:io';

checkInternetConnection({bool checkInternet = false}) async {
  if (checkInternet) {
    try {
      var result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (ex) {
      return false;
    }
  }
  else{
    return true;
  }
}

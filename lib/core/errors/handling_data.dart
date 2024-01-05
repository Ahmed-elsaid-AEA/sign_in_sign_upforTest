
import 'package:signin_signup/core/errors/status_request.dart';

handlingData(response) {
  if (response is StatusRequest) {
    return response;

  } else {
    return StatusRequest.sucess;
  }
}

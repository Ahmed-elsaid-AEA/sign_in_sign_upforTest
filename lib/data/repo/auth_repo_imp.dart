import 'dart:convert';

import 'package:signin_signup/core/errors/status_request.dart';
import 'package:signin_signup/core/resources/api_constants.dart';
import 'package:signin_signup/core/services/api_services.dart';

import 'auth_repo.dart';

class AuthRepoImp extends AuthRepo {
    ApiServices apiServices;

  AuthRepoImp(this.apiServices);

  StatusRequest? statusRequest = StatusRequest.none;

  @override
  login({required String email, required String password}) async {
    dynamic data = {"email": email, "password": password};
    var response = await
    apiServices.getData(
      APIConstants.login,
       data,
    );

    return response.fold((l) => l, (r) => r);
  }

  @override
  register({required String email, required String password })async {
    dynamic data = {"email": email, "password": password};
    var response = await
    apiServices.getData(
      APIConstants.register,
      data,
    );
    return response.fold((l) => l, (r) => r);

  }
}

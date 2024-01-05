import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:signin_signup/core/errors/status_request.dart';
import 'package:signin_signup/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<Either<StatusRequest, Map>> getData(
      String linkUrl, dynamic data) async {
    try {
      if (await checkInternetConnection()) {
        var response = await http.post(
          Uri.parse(linkUrl),
          body: data,
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.failure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverException);
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:signin_signup/core/errors/status_request.dart';

abstract class AuthRepo{
   login({required String email, required String password });
  register({required String email, required String password });
}
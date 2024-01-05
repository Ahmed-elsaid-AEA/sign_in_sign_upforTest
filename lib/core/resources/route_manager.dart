import 'package:flutter/material.dart';
import 'package:signin_signup/presentations/screens/page/on_boarding_page.dart';
import 'package:signin_signup/presentations/screens/page/sign_in_page.dart';
import 'package:signin_signup/presentations/screens/page/sign_up_page.dart';

class RouteManager{
  static   Map<String, WidgetBuilder> route={
    "on_boarding_page":(context) => OnBoardingPage(),
    "sign_up_page":(context) =>   SignUpPage(),
    "sign_in_page":(context) =>   SignInPage(),

  };
}
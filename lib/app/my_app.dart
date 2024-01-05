import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/core/resources/route_manager.dart';
import 'package:signin_signup/core/services/api_services.dart';
import 'package:signin_signup/data/repo/auth_repo.dart';
import 'package:signin_signup/data/repo/auth_repo_imp.dart';
import 'package:signin_signup/manager/auth/sign_in/signin_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        initialRoute: "on_boarding_page",
        debugShowCheckedModeBanner: false,
        routes: RouteManager.route,
      )
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';
import 'package:signin_signup/core/resources/font_size_value_mangager.dart';

class CustomTitleSignInSignUp extends StatelessWidget {
  const CustomTitleSignInSignUp({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      title,
      style: const TextStyle(
        fontSize: FontSizeValueManager.fontZV30,
        color: ColorValueManager.kPrimaryColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

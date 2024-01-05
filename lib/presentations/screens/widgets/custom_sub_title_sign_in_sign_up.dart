import 'package:flutter/material.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';
import 'package:signin_signup/core/resources/font_size_value_mangager.dart';

class CustomSubTitleSignInSignUp extends StatelessWidget {
  const CustomSubTitleSignInSignUp({super.key, required this.subTitle});

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(subTitle,
      textAlign: TextAlign.center,

      style: const TextStyle(
          color: ColorValueManager.kBlackColor,
          fontWeight: FontWeight.bold,
          fontSize: FontSizeValueManager.fontZV16),);
  }
}

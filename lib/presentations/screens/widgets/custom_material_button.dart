import 'package:flutter/material.dart';
import 'package:signin_signup/core/resources/border_radius_manger.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';
import 'package:signin_signup/core/resources/padding_margin_value_manager.dart';
import 'package:signin_signup/core/resources/size_value_manager.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton(
      {super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      textColor: ColorValueManager.kWhiteColor,
      onPressed: onPressed,
      child: Container(
          padding: const EdgeInsets.all(PaddingValueManager.p10_0),
          alignment: Alignment.center,
          width: double.infinity,
          height: HeightValueManager.hV50,
          decoration: BoxDecoration(
              color: ColorValueManager.kPrimaryColor,
              borderRadius: BorderRadius.circular(BorderRadiusManager.bR10)),
          child: Text(title)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:signin_signup/core/resources/border_radius_manger.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';

class CustomTextFieldSignInSignUp extends StatelessWidget {
  const CustomTextFieldSignInSignUp(
      {super.key, required this.text,   this.controller,  });

  final String text;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(BorderRadiusManager.bR15),
              borderSide: const BorderSide(
                color: ColorValueManager.kRedColor,
              )),
          label: Text(
            text,
            style: const TextStyle(
                color: ColorValueManager.kGreyColor,
                fontWeight: FontWeight.bold),
          ),
          filled: true,
          fillColor: ColorValueManager.kSecondColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(BorderRadiusManager.bR15),
              borderSide:
                  const BorderSide(color: ColorValueManager.kTransparentColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(BorderRadiusManager.bR15))),
    );
  }
}

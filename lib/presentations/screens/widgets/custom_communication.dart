import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';
import 'package:signin_signup/core/resources/size_value_manager.dart';
import 'package:signin_signup/core/resources/strings_value_mangager.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_social_communcate.dart';

class CustomCommmunication extends StatelessWidget {
  const CustomCommmunication({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          StringsValueManager.orContinueWith,
          style: TextStyle(
            color: ColorValueManager.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: HeightValueManager.hV20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSocialCommunicat(
              icon: Icons.facebook,
              onPressed: () {},
            ),
            const SizedBox(
              width: WidthValueManger.wV10,
            ),
            CustomSocialCommunicat(
              icon: Icons.face,
              onPressed: () {},
            ),
            const SizedBox(
              width: WidthValueManger.wV10,
            ),
            CustomSocialCommunicat(
              icon: Icons.apple,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

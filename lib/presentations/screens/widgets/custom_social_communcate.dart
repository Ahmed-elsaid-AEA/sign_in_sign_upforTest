import 'package:flutter/material.dart';

import '../../../core/resources/border_radius_manger.dart';
import '../../../core/resources/color_value_manager.dart';
import '../../../core/resources/size_value_manager.dart';

class CustomSocialCommunicat extends StatelessWidget {
  const CustomSocialCommunicat({super.key, required this.icon, required this.onPressed});

  final IconData icon;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        minWidth: WidthValueManger.wV30,
        shape: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ColorValueManager.kTransparentColor),
            borderRadius: BorderRadius.circular(BorderRadiusManager.bR10)),
        color: ColorValueManager.kGreyColorLight,
        onPressed: onPressed,
        child: Icon(
          icon,
          color: ColorValueManager.kBlackColor,
        ));
  }
}

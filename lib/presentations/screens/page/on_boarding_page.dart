import 'package:flutter/material.dart';
import 'package:signin_signup/core/resources/asset_value_manager.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';
import 'package:signin_signup/core/resources/font_size_value_mangager.dart';
import 'package:signin_signup/core/resources/size_value_manager.dart';
import 'package:signin_signup/core/resources/strings_value_mangager.dart';
import 'package:signin_signup/presentations/screens/page/sign_in_page.dart';
import 'package:signin_signup/presentations/screens/page/sign_up_page.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_material_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
              height: HeightValueManager.hV400,
              AssetValueManager.onBoardingImage),
          const SizedBox(height: HeightValueManager.hV50),
          const Text(
            textAlign: TextAlign.center,
            StringsValueManager.onBoardingTitle,
            style: TextStyle(
              wordSpacing: SpacingValueManager.sV5,
              fontSize: FontSizeValueManager.fontZV30,
              color: ColorValueManager.kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: FlexValueManager.flexValue1,
          ),
          const Text(
            textAlign: TextAlign.center,
            StringsValueManager.onBoardingDesc,
            style: TextStyle(color: ColorValueManager.kBlackColor),
          ),
          const Spacer(
            flex: FlexValueManager.flexValue4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: WidthValueManger.wV150,
                child: CustomMaterialButton(
                  title: StringsValueManager.login,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  SignInPage(),
                        ));
                  },
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: const Text(
                    StringsValueManager.register,
                    style: TextStyle(color: ColorValueManager.kBlackColor),
                  ))
            ],
          ),
          const Spacer(
            flex: FlexValueManager.flexValue1,
          ),
        ],
      )),
    );
  }
}

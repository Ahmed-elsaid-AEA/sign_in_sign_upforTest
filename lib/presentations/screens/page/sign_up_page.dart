import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/core/resources/color_value_manager.dart';
import 'package:signin_signup/core/resources/padding_margin_value_manager.dart';
import 'package:signin_signup/core/resources/size_value_manager.dart';
import 'package:signin_signup/core/resources/strings_value_mangager.dart';
import 'package:signin_signup/data/repo/auth_repo_imp.dart';
import 'package:signin_signup/manager/auth/sign_up/sign_up_cubit.dart';
import 'package:signin_signup/presentations/screens/page/sign_in_page.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_communication.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_material_button.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_sub_title_sign_in_sign_up.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_text_field_sign_in_sign_up.dart';
import 'package:signin_signup/presentations/screens/widgets/custom_title_sign_in_sign_up.dart';

import '../../../core/services/api_services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => SignUpCubit(AuthRepoImp(
          ApiServices())),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
          if (state is SignUpLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SignUpSuccess) {
            return const Center(child: Text("success Register "));
          } else {
            return SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: PaddingValueManager.p8_0,
                  horizontal: PaddingValueManager.p16_0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                    const CustomTitleSignInSignUp(
                        title: StringsValueManager.createAccount),
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                    const CustomSubTitleSignInSignUp(
                        subTitle: StringsValueManager.welcomeBack),

                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                      CustomTextFieldSignInSignUp(
                      controller: emailController,
                        text: StringsValueManager.email),
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                      CustomTextFieldSignInSignUp(
                      controller: passwordController,
                        text: StringsValueManager.password),
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                    const CustomTextFieldSignInSignUp(

                        text: StringsValueManager.confirmPassword),
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                    if (state is SignUpFailure)
                        Text(

                        state.errorMessage,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    // TextButton(
                    //   onPressed: () {},
                    //
                    //   child: const Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         StringsValueManager.forgetPassword,
                    //         textAlign: TextAlign.end,
                    //         style: TextStyle(
                    //             color: ColorValueManager.kPrimaryColor,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                    CustomMaterialButton(
                      title: StringsValueManager.register,
                      onPressed: () {
                        context.read<SignUpCubit>().register(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                    ),
                    const SizedBox(
                      height: HeightValueManager.hV20,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ));
                        },
                        child: const Text(
                          StringsValueManager.alreadyHaveAcount,
                          style: TextStyle(color: ColorValueManager.kBlackColor),
                        )),

                    const CustomCommmunication(),

                  ],
                ),
              ),
            ));
          }
        }),
      ),
    );
  }
}

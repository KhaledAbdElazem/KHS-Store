// ignore_for_file: use_key_in_widget_constructors

import 'package:e_commerce_app/features/auth/screens/login/widgets/divider.dart';
import 'package:e_commerce_app/features/auth/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/auth/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/features/auth/screens/login/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo Title Sub-Title
              const TLoginHeader(),

              // Form
              const TLoginForm(),

              TDivider(
                dividerText: TTexts.orSigninWith.capitalize!,
              ),

              const SizedBox(height: TSizes.spacebtwSections),
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}

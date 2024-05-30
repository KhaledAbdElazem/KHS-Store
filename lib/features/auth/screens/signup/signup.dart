// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/features/auth/screens/login/widgets/divider.dart';
import 'package:e_commerce_app/features/auth/screens/login/widgets/signuoForm.dart';
import 'package:e_commerce_app/features/auth/screens/login/widgets/social_button.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              ///form
              const SizedBox(height: TSizes.spacebtwSections),

              TSignupForm(),
              SizedBox(height: TSizes.spacebtwSections),

              ///divider
              TDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              SizedBox(height: TSizes.spacebtwSections),

              ///social

              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

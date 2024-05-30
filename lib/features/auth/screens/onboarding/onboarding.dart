// ignore_for_file: camel_case_types

import 'package:e_commerce_app/features/auth/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/features/auth/screens/onboarding/Widgets/onboarding_navigation.dart';
import 'package:e_commerce_app/features/auth/screens/onboarding/Widgets/onboarding_next.dart';
import 'package:e_commerce_app/features/auth/screens/onboarding/Widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/auth/screens/onboarding/Widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImage.onboardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImage.onboardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImage.onboardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const onBoardingSkip(),
          const OnBoardingNavigation(),
          const onboardingNext()
        ],
      ),
    );
  }
}

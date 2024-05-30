import 'package:e_commerce_app/features/auth/screens/onboarding/onboarding.dart';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/themes/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}

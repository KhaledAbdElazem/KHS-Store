import 'package:e_commerce_app/utils/themes/costum%20themes/appbar_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/chip_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/text_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/text_field_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/themes/costum%20themes/outlined_button_theme.dart';

import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightoutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}

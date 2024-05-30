import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.darkGray.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 4,
      offset: const Offset(0, 2));
  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGray.withOpacity(0.1),
      blurRadius: 58,
      spreadRadius: 4,
      offset: const Offset(0, 2));
} // BoxShadow
// import 'package:e_commerce_app/utils/constants/colors.dart';
// import 'package:e_commerce_app/utils/constants/sizes.dart';
// import 'package:e_commerce_app/utils/devices/device_utility.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// class TSearchContainer extends StatelessWidget {
//   const TSearchContainer({
//     super.key,
//     required String text,
//     required bool showBorder,
//     required bool showBackground,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
//       child: Container(
//         width: TDeviceUtils.getScreenWidth(context),
//         padding: const EdgeInsets.all(TSizes.md),
//         decoration: BoxDecoration(
//           color: TColors.textWhite,
//           borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
//           border: Border.all(color: TColors.gray),
//         ),
//         child: Row(
//           children: [
//             const Icon(
//               Iconsax.search_normal,
//               color: TColors.darkGray,
//             ),
//             const SizedBox(
//               width: TSizes.spacebtwItems,
//             ),
//             Text(
//               'Search In Store',
//               style: Theme.of(context).textTheme.bodySmall,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/devices/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.gray) : null,
          ), //BoxDecoration
          child: Row(
            children: [
              Icon(icon, color: dark ? TColors.darkGray : Colors.grey),
              const SizedBox(
                width: TSizes.spacebtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/texts/product_price_text.dart';
import 'package:e_commerce_app/common/texts/product_title_text.dart';
import 'package:e_commerce_app/common/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & Sale Price
        Row(
          children: [
            TroundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.seconary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spacebtwItems),
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spacebtwItems),
            const TProductPriceText(
              isLarge: true,
              price: '175',
            ),
          ],
        ),
        const SizedBox(height: TSizes.spacebtwItems / 1.5),

        const TProductTitleText(title: 'Black Smart Watch'),
        const SizedBox(height: TSizes.spacebtwItems / 1.5),

        const Row(children: [
          TProductTitleText(title: 'Status'),
        ]),
        Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: TSizes.spacebtwItems / 1.5),

        Row(
          children: [
            TCircularImage(
              image: TImage.appleIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.textWhite : TColors.black,
            ),
            const BrandTitleWithVerifiedIcon(
                title: 'Apple', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}

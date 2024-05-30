import 'package:e_commerce_app/common/texts/product_title_text.dart';
import 'package:e_commerce_app/common/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        TRoundedImage(
          imageUrl: TImage.category5,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkGray
              : TColors.light,
        ), //TRoundedImage
        const SizedBox(width: TSizes.spacebtwItems),

        //Title, Price, & Size
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
                child: TProductTitleText(
                    title: 'Black Sports shoes ', maxLines: 1)),

            ///Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'UK 08',
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}

import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products.cart/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImage.user)),
                const SizedBox(width: TSizes.spacebtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ), //Row
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ), //Row
        const SizedBox(height: TSizes.spacebtwItems),

        //Review
        Row(children: [
          const TRatingBarIndicator(rating: 4),
          const SizedBox(width: TSizes.spacebtwItems),
          Text('01 Apr, 2024', style: Theme.of(context).textTheme.bodyMedium),
        ]), //Row
        const SizedBox(height: TSizes.spacebtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intvitive. I was able to navigate and make purchasses seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ), //ReadMoreText
        const SizedBox(height: TSizes.spacebtwItems),

        //Company Review
        TroundedContainer(
          backgroundColor: dark ? TColors.darkGray : TColors.gray,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("KHS Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text("02 Apr 2024",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ), //Row
                const SizedBox(height: TSizes.spacebtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intvitive. I was able to navigate and make purchasses seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ), //Padding
        ), //TRoundedContainer

        const SizedBox(height: TSizes.spacebtwSections),
      ],
    ); //Column
  }
}

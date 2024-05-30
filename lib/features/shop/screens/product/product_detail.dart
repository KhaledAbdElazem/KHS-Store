import 'package:e_commerce_app/common/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product/product_reviews/product_reviews.dart';
import 'package:e_commerce_app/features/shop/screens/product/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce_app/features/shop/screens/product/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product/widgets/rating_share_widget.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
// import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1- Product Image Slider
            const TProductImageSlider(),

            //2- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  //-Rating & Share Button
                  const RatingAndShare(),

                  //-Price, Title, Stack & Brand
                  const TProductMetaData(),

                  ///-- Attributes
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spacebtwSections),

                  ///-- Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),

                  ///-- Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spacebtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i an',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///-- Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spacebtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spacebtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

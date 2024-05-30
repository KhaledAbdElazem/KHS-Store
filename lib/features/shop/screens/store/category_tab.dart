import 'package:e_commerce_app/common/texts/section_heading.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products.cart/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';

import 'package:e_commerce_app/features/shop/screens/store/brand_show_case.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TBrandShowCase(
                  images: [
                    TImage.category7,
                    TImage.category9,
                    TImage.category6
                  ],
                ),
                const SizedBox(
                  height: TSizes.spacebtwItems,
                ),

                ///products
                TSectionHeading(
                  title: 'You might like',
                  onPressed: () => Get.to(()=> const AllProducts()),
                ),
                const SizedBox(
                  height: TSizes.spacebtwItems,
                ),
                TGridLayout(
                    itemCount: 10,
                    itemBuilder: (_, index) => const TProductCardVertical()),
                const SizedBox(
                  height: TSizes.spacebtwSections,
                ),
              ],
            ),
          ),
        ]);
  }
}

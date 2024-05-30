
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/common/texts/section_heading.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products.cart/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app/features/shop/screens/home/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/promr_slider.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spacebtwSections,
                  ),
                  TSearchContainer(
                    text: 'Search In Store',
                    showBorder: false,
                    showBackground: true,
                  ),
                  SizedBox(
                    height: TSizes.spacebtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spacebtwItems,
                        ),
                        THomeCategories()
                      ],
                    ),
                  ),

                  ///Body ---Tutoriol  [Section#3, video#5]
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    TPromoSlider(
                      banners: [
                        TImage.promoBanner1,
                        TImage.promoBanner2,
                        TImage.promoBanner3
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spacebtwSections,
                    ),
                    TSectionHeading(
                        title: 'Popular Products', onPressed: () => Get.to(()=> const AllProducts())),
                    const SizedBox(
                      height: TSizes.spacebtwItems,
                    ),
                    TGridLayout(
                      itemCount: 20,
                      itemBuilder: (_, index) => TProductCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

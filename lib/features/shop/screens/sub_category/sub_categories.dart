import 'package:e_commerce_app/common/texts/section_heading.dart';
import 'package:e_commerce_app/common/widgets/app_bar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce_app/common/widgets/products.cart/product_card_horizontal.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///Banner
                    const TRoundedImage(
                        width: double.infinity,
                        imageUrl: TImage.promoBanner3,
                        applyImageRadius: true),

                    ///Sub_category
                    Column(
                      children: [
                        ///Heading
                        TSectionHeading(title: 'Sports shirts', onPressed: () {}),

                        SizedBox(
                          height: 120,
                          child: ListView.separated(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) => const SizedBox(width: TSizes.spacebtwItems,),
                            itemBuilder: (context, index) => const TProductCardHorizontal()),
                        ),
                      ],
                    )
                  ],
                ))));
  }
}

import 'package:e_commerce_app/common/widgets/image_widget_text/vertical_image_text.dart';
import 'package:e_commerce_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImage.category2,
            title: 'Airpods',
            onTap: () => Get.to(()=> const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}

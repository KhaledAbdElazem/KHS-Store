import 'package:e_commerce_app/common/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/products.cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products.cart/cart_item.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spacebtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          //Cart Item
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spacebtwItems),

          //Add Remove Button Row with total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Extra Space
                    SizedBox(width: 70),
                    //Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                //Product Total Price
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}

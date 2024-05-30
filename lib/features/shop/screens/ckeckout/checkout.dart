import 'package:e_commerce_app/common/widgets/app_bar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products.cart/coupon_widget.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widget/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/ckeckout/widget/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/ckeckout/widget/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/ckeckout/widget/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //-- Items in Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spacebtwSections),

              //Coupon TextField
              const TCouponCode(dark: true,),
              const SizedBox(height: TSizes.spacebtwSections),

              //Biling Section
              TroundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.textWhite,
                child: const Column(
                  children: [
                    //Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spacebtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: TSizes.spacebtwItems),

                    //Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spacebtwItems),

                    //Address
                    TBillingAddressSection(),
                  ],
                ),
              ), //TRoundedContainer
            ],
          ), //Column
        ), //Padding
      ), //SingleChildScrollView

      //Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: TImage.success,
                    title: 'Payment Success!',
                    subTitle: 'Your item will be shipped soon!',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout \$256.0')),
      ),
    ); //Scaffold
  }
}

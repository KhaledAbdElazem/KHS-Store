
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TroundedContainer(
      width: double.infinity,
      showBorder: true,
      padding:const EdgeInsets.all(TSizes.md), 
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkGray
              : TColors.gray,
      margin: const EdgeInsets.only(bottom: TSizes.spacebtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
          child:Icon(
            selectedAddress ? Iconsax.tick_circle5 : null,
            color: selectedAddress
                ? dark
                    ? TColors.light
                    : TColors.dark
                : null,
          ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Text(
                'Khaled Abd-Elazem',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm /2),
              const Text('+1555376715', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm /2),
              const Text('Egypt, EL-Mansoura 1234', softWrap: true),


            ],
            )


        ],
      ), //Stack
    ); //TRoundedContainer
  }
}

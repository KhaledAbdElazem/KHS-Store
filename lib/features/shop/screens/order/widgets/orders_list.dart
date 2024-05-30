import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap:true,
      itemCount: 
      
      
      10,
      separatorBuilder:(_, __)=> const SizedBox(height:TSizes.spacebtwItems),
      itemBuilder:(_, index) => TroundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: dark? TColors.dark : TColors.light,
    child: Column(
          children: [
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spacebtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm)),
              ],
            ),
            const SizedBox(height: TSizes.spacebtwItems),
          //row2
          Row(
            children: [
              Expanded(
                child:Row(
            children: [
              const Icon(Iconsax.ship),
              const SizedBox(width: TSizes.spacebtwItems/2,),
              
              Expanded(
                child:Column(
                mainAxisSize:MainAxisSize.min,
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text(
                    'order',
                    style: Theme.of(context).textTheme.labelMedium),
                  Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium,),
                ],
              ),
              ),
            ],
          ),
              ),
        Expanded(
          child: Row(
            children: [
              const Icon(Iconsax.calendar),
              const SizedBox(width: TSizes.spacebtwItems/2,),
              
              Expanded(
                child:Column(
                mainAxisSize:MainAxisSize.min,
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text(
                    'Shiping Date',
                    style: Theme.of(context).textTheme.labelMedium),
                  Text('03 feb 2025', style: Theme.of(context).textTheme.titleMedium,),
                ]
              ),
              ),
            ],
          ),
        ),
          ],
    ),
        ],
        ),
      ), 
  );
  }
}
import 'package:e_commerce_app/common/texts/section_heading.dart';
import 'package:e_commerce_app/common/widgets/app_bar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TCircularImage(
                          image: TImage.user, width: 80, height: 80),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Change Profile Picture')),
                    ],
                  )),

              //Details
              const SizedBox(height: TSizes.spacebtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spacebtwItems),

              //Heading Profile Info
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spacebtwItems),

              TProfileMenu(title: 'Name', value: 'John', onPressed: () {}),
              TProfileMenu(
                  title: 'Username', value: 'John-Ali', onPressed: () {}),

              const SizedBox(height: TSizes.spacebtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spacebtwItems),

              //Heading Profile Info
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spacebtwItems),

              TProfileMenu(
                  title: 'User ID',
                  value: '9181',
                  icon: Iconsax.copy,
                  onPressed: (){}),
              TProfileMenu(
                  title: 'E-mail',
                  value: 'KhaledAbdelazem@gmail.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Phone Number',
                  value: '+201555376715',
                  onPressed: () {}),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                  title: 'Date of Birth',
                  value: '1 Nov. 2002',
                  onPressed: () {}),

              const Divider(),
              const SizedBox(height: TSizes.spacebtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account',
                      style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

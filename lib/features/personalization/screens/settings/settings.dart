import 'package:adroidprojects/common/widgets/appbar/appbar.dart';
import 'package:adroidprojects/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:adroidprojects/common/widgets/list_styles/settings_menu_tile.dart';
import 'package:adroidprojects/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_styles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(child: Column(
              children: [
                TAppBar(title: Text('Account', style:Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                ///user profile card
                TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBetweenSections,),
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionsButton: false,),
                  const SizedBox(height: TSizes.spaceBetweenItems,),

                  const TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'set shopping delivery address'),
                  const TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add remove products and move to checkout'),
                  const TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In_progress and completed orders'),
                  const TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List od all discounted coupons'),
                  const TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),

                  const SizedBox(height: TSizes.spaceBetweenSections,),
                  const TSectionHeading(title: 'App Settings', showActionsButton: false,),
                  const SizedBox(height: TSizes.spaceBetweenItems),

                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload data to your cloud Firebase'),
                  TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set Recommendation based on location', trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search results are safe for all users', trailing: Switch(value: false, onChanged: (value){})),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'HD image quality', subTitle: 'Improve image quality', trailing: Switch(value: false, onChanged: (value){})),

                  ///LOgOut button
                  const SizedBox(height: TSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),
                  ),
                  const SizedBox(height: TSizes.spaceBetweenSections * 2.5,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



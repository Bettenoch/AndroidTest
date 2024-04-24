import 'package:adroidprojects/common/widgets/appbar/appbar.dart';
import 'package:adroidprojects/common/widgets/images/t_circular_image.dart';
import 'package:adroidprojects/common/widgets/texts/section_heading.dart';
import 'package:adroidprojects/utils/constants/image_strings.dart';
import 'package:adroidprojects/utils/constants/sizes.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.icon1, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBetweenItems,),
              const TSectionHeading(title: 'Profile Information', showActionsButton: false,),
              const SizedBox(height: TSizes.spaceBetweenItems,),

              Row(
                children: [
                  Expanded(child: Text('Name', style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis,)),
                  Expanded(child: Text('Coding with Bett', style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,)),
                  const Expanded(child: Icon(Iconsax.arrow_right_34, size: 18,))
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}

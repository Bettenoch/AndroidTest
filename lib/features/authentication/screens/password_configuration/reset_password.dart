import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(image: const AssetImage(TImages.onBoardingImage3), width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBetweenSections),
              Text('Change your password', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBetweenItems),
              Text('Follow the prompts to reset password', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBetweenSections),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Done'))),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text('Reset Email'))),


            ],
          ),
        ),
      ),
    );
  }
}

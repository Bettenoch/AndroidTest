import 'package:adroidprojects/common/widgets/success_screen/success_screen.dart';
import 'package:adroidprojects/features/authentication/screens/login/login.dart';
import 'package:adroidprojects/utils/constants/image_strings.dart';
import 'package:adroidprojects/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// image
              Image(
                image: const AssetImage(TImages.onBoardingImage4),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBetweenSections),
              Text('Confirm your email',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBetweenItems),
              Text('suppor@bett.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBetweenItems),
              Text(
                  'Confirm your email address to shop at EBetts Computers where we value your future.',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBetweenSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                      image: TImages.onBoardingImage4,
                      title: 'Your account has been created successfully',
                      subTitle: 'Welcome to Ebett computers where you get the value of your money and the ultimate online shopping experience',
                      onPressed: () => Get.to(() => const LoginScreen()),
                  ),),
                  child: const Text('continue'),
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBetweenItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Resend(email)'))),

              /// Title&subtitle
              /// Button
            ],
          ),
        ),
      ),
    );
  }
}

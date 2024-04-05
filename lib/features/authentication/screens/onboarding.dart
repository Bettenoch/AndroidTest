import 'package:adroidprojects/utils/constants/image_strings.dart';
import 'package:adroidprojects/utils/constants/sizes.dart';
import 'package:adroidprojects/utils/device/device_utility.dart';
import 'package:adroidprojects/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Horizontal Scrollable pages
        PageView(
          children: const [
            OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: "Welcome to Beta's Computers",
                subTitle:
                    'Your trusted source in quality laptops and accessories'),
            OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: "Select payment method",
                subTitle:
                    'Pay using mobile M-pesa or choose pay on delivery method'),
            OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: "Get delivery at your doorstep",
                subTitle:
                    'From our timely and contactless delivery means find your ordered materials delivered at your place of convenience'),
          ],
        ),
        const OnBoardingSkip()
      ],
    ));
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: const Text('Skip'),
        ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBetweenItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}

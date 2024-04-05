import 'package:adroidprojects/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:adroidprojects/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:adroidprojects/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:adroidprojects/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:adroidprojects/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
          children: [
            //Horizontal Scrollable pages
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
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
            const OnBoardingSkip(),

            const OnBoardingDotNavigation(),

            const OnBoardingNextButton()
          ],
    ));
  }
}



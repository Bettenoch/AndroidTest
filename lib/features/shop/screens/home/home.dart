import 'package:adroidprojects/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:adroidprojects/features/shop/screens/home/widgets/home_categories.dart';
import 'package:adroidprojects/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),
                TSearchContainer(
                  text: 'Search for products',
                ),
                SizedBox(
                  height: TSizes.spaceBetweenSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionsButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: TSizes.spaceBetweenItems),

                      ///Categories
                      THomeCategories(),

                      ],
                    ),
                  )
                ],
              )
            ),
            /// Body--Section
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banners: [TImages.promoIcon1, TImages.promoIcon2, TImages.promoIcon3],)

            )
          ],
        ),
      ),
    );
  }
}









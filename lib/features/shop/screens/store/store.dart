import 'package:adroidprojects/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:adroidprojects/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:adroidprojects/common/widgets/layouts/grid_layout.dart';
import 'package:adroidprojects/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:adroidprojects/common/widgets/texts/section_heading.dart';
import 'package:adroidprojects/utils/constants/enums.dart';
import 'package:adroidprojects/utils/constants/image_strings.dart';
import 'package:adroidprojects/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
            iconColor: TColors.buttonPrimary,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: TSizes.spaceBetweenItems,
                    ),
                    const TSearchContainer(
                        text: 'Laptops',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBetweenSections),

                    TSectionHeading(title: 'Featured Brands', onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBetweenItems / 1.5,
                    ),
                    TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TRoundedContainer(
                              padding: const EdgeInsets.all(TSizes.md),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: TCircularImage(
                                      image: TImages.laptop5,
                                      isNetworkImage: false,
                                      backgroundColor: Colors.transparent,
                                      overlayColor: dark ? TColors.white : TColors.black,
                                    ),
                                  ),
                                  const SizedBox(width: TSizes.spaceBetweenItems / 2),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const TBrandTitleWithIcon(
                                          title: 'HP',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          '45 Products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.labelMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}

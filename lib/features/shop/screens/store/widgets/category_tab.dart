import 'package:adroidprojects/common/widgets/layouts/grid_layout.dart';
import 'package:adroidprojects/common/widgets/products_cards/product_card_vertical.dart';
import 'package:adroidprojects/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/products_cards/t_brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TBrandShowCase(images: [TImages.laptop3, TImages.laptop2, TImages.laptop5]),
                const TBrandShowCase(images: [TImages.laptop3, TImages.laptop2, TImages.laptop5]),
                const SizedBox(height: TSizes.spaceBetweenItems),
                TSectionHeading(
                  title: 'You might also like',
                  showActionsButton: true,
                  onPressed: () {},
                ),
                const SizedBox(height: TSizes.spaceBetweenItems),
                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductVertical()),
                const SizedBox(height: TSizes.spaceBetweenSections),
              ],
            ),
          ),
        ]);
  }
}

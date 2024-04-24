import 'package:adroidprojects/common/widgets/products_cards/t_brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBetweenItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false,),
          const SizedBox(height: TSizes.spaceBetweenItems),
          Row(
            children: images.map((image) => brandTopProductImage(image, context)).toList(),

          )
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, context) {
    return Expanded(
        child: TRoundedContainer(
          height: 100,
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
          margin: const EdgeInsets.only(right: TSizes.sm),
          padding: const EdgeInsets.all(TSizes.md),
          child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      )
    );
  }
}

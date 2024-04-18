import 'package:adroidprojects/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:adroidprojects/common/widgets/images/t_rounded_image.dart';
import 'package:adroidprojects/common/widgets/texts/product_title_text.dart';
import 'package:adroidprojects/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/shadows.dart';
import '../icons/t_circular_icon.dart';
import '../texts/product_price_text.dart';

class TProductVertical extends StatelessWidget {
  const TProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: THelperFunctions.isDarkMode(context)
                ? TColors.darkerGrey
                : TColors.white),
        child: Column(
          children: [
            ///thumbnail,wishlist discount tag
            TRoundedContainer(
              height: 100,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageUrl: TImages.laptop1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.md,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '24%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red))
                ],
              ),
            ),

            const SizedBox( height:  TSizes.spaceBetweenItems/2),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TProductTitleText(title: 'Theme.of(context).textTheme', smallSize: true,),
                  const SizedBox(height: TSizes.spaceBetweenItems/2),
                  Row(
                    children: [
                      Text('HP', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: TSizes.xs),
                      const Icon(Iconsax.verify, color: TColors.primary, size: TSizes.iconXs),
                    ],
                  ),

                  Row(
                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    children: [
                      const TProductPriceText(price: '455'),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          )
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: TColors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}




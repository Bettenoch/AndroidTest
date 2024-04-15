import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder=true, this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width:TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? darkMode ? TColors.white : TColors.darkGrey : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey): null,
          ),
          child: Row(
            children: [
              Icon(icon, color: TColors.darkGrey),
              const SizedBox(width: TSizes.spaceBetweenItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
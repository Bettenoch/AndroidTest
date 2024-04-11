import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome to EBett Computers', style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
          Text('Welcome to EBett Computers', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.white,)
      ],
    );
  }
}
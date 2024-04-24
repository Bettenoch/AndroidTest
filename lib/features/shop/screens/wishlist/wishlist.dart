import 'package:adroidprojects/common/widgets/appbar/appbar.dart';
import 'package:adroidprojects/common/widgets/icons/t_circular_icon.dart';
import 'package:adroidprojects/common/widgets/layouts/grid_layout.dart';
import 'package:adroidprojects/features/shop/screens/home/home.dart';
import 'package:adroidprojects/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products_cards/product_card_vertical.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductVertical()),
            ],
          ),
        ),
      ),
    );
  }
}

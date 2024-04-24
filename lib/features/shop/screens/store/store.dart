import 'package:adroidprojects/common/widgets/appbar/t_tab_bar.dart';
import 'package:adroidprojects/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:adroidprojects/common/widgets/layouts/grid_layout.dart';
import 'package:adroidprojects/common/widgets/texts/section_heading.dart';
import 'package:adroidprojects/features/shop/screens/store/widgets/category_tab.dart';
import 'package:adroidprojects/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';

import '../../../../common/widgets/products_cards/t_brand_card.dart';
import '../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                            return const TBrandCard(showBorder: false,);
                          })
                    ],
                  ),
                ),
                bottom:  const TTabBar(
                  tabs: [
                    Tab(child: Text('Laptops')),
                    Tab(child: Text('Televisions')),
                    Tab(child: Text('Speakers')),
                    Tab(child: Text('Desktops')),
                  ],
                )
              )
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          )
        ),
      ),
    );
  }
}




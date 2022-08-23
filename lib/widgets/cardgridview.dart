import 'package:flutter/material.dart';
import 'package:purpletoko/widgets/shop_card.dart';

import '../Models/shop_model.dart';

class ShopCardGrid extends StatelessWidget {
  const ShopCardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: shopdata.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3 / 4,),
        itemBuilder: (context, index) {
          final data = shopdata[index];
          return ShopCard(
            cost: data.cost,
            imageUrl: data.imageUrl,
            location: data.location,
            shopType: data.shopType,
            shopname: data.shopname,
          );
        });
  }
}

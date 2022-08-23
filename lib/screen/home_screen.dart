import 'package:flutter/material.dart';
import 'package:purpletoko/widgets/market_description.dart';
import 'package:purpletoko/widgets/number_shopes.dart';
import 'package:purpletoko/widgets/search_box_row.dart';

import '../widgets/first_row_market.dart';
import '../widgets/market_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 310,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/curvedrec.png',
                  ),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const FirstRowMarket(),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SearchBoxRow(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: ShopNumber(),
                  ),
                  SizedBox(height: 8),
                  MarketName(),
                  SizedBox(
                    height: 8,
                  ),
                  MarketDescription()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


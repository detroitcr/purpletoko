import 'package:flutter/material.dart';
import 'package:purpletoko/widgets/cardgridview.dart';
import 'package:purpletoko/widgets/market_description.dart';
import 'package:purpletoko/widgets/number_shopes.dart';
import 'package:purpletoko/widgets/search_box_row.dart';

import '../widgets/first_row_market.dart';
import '../widgets/market_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 285,
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sort by Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.filter)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
              
              controller: tabController,
              tabs: [
                Chip(
                  label: SizedBox(
                    height: 20,
                    width: 90,
                    child: Center(
                      child: Text(
                        'All',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Chip(
                  label: SizedBox(
                    height: 20,
                    width: 90,
                    child: Center(
                      child: Text(
                        'Featured',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Chip(
                  label: SizedBox(
                    height: 20,
                    width: 90,
                    child: Center(
                      child: Text(
                        'New',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children:const [
                  ShopCardGrid(),
                  ShopCardGrid(),
                  ShopCardGrid(),
                ],
              ),
            ),
            //SizedBox(height: 38,child: TabButton(),),
            
            //  ShopCard()
          ],
        ),
      ),
    );
  }
}

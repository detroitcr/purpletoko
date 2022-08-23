import 'package:flutter/material.dart';
import 'package:purpletoko/Utils/custom_color.dart';

class ShopCard extends StatefulWidget {
  final String imageUrl;
  final String shopname;
  final String location;
  final String cost;
  final String shopType;

  const ShopCard({
    Key? key,
    required this.cost,
    required this.imageUrl,
    required this.location,
    required this.shopType,
    required this.shopname,
  }) : super(key: key);

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        widget.imageUrl,
                      ),
                    ),
                  ),
                  width: 170,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(13.0),
                            bottomRight: Radius.circular(13.0),
                          ),
                          child: Container(
                            height: 30,
                            width: 70,
                            color: Colors.white,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.done,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Open')
                              ],
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white60,
                          backgroundImage:
                              AssetImage('assets/images/heart.png'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/shed.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: [
                Text(
                  widget.shopname,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: [
                Text(widget.shopType,),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_city,
                ),
                Text(
                  widget.location,
                  style: TextStyle(color: CustomColor.appbarColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Row(
              children: [
                Text(
                  widget.cost,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class FirstRowMarket extends StatelessWidget {
  const FirstRowMarket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9.0, right: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Market Page',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const BookMarkCart(),
        ],
      ),
    );
  }
}

class BookMarkCart extends StatelessWidget {
  const BookMarkCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.bookmark,
          color: Colors.white,
          size: 35,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 35,
        ),
      ],
    );
  }
}

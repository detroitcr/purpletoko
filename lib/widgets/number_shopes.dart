import 'package:flutter/material.dart';

class ShopNumber extends StatelessWidget {
  const ShopNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '347 Shopes ',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              
              TextSpan(
                  text: 'in',
                  style: TextStyle(
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

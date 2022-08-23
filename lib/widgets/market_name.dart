import 'package:flutter/material.dart';

class MarketName extends StatelessWidget {
  const MarketName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0),
      child: Row(
        children:const [
          Text(
            'Sarojini Nagar Market',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MarketDescription extends StatelessWidget {
  const MarketDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:18.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'This market is famous for its export reject flea, \n market. Rich in trendy apprael, Sarojini lives in, \n the hearts of Delhi people',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

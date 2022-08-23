import 'package:flutter/material.dart';
import 'package:purpletoko/Models/tabmodel.dart';

class TabButton extends StatelessWidget {
  const TabButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 20,
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: tabName.length,
      itemBuilder: ((context, index) {
        final data = tabName[index];
        return Chip(
          label: SizedBox(
            width: 90,
            child: Center(
              child: Text(
                data.name,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class SearchBoxRow extends StatelessWidget {
  const SearchBoxRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:const EdgeInsets.all(8),
          width: 300,
          child:const CustomTextFormField(
            icon: Icon(Icons.search),
            hintText: "Search",fillColor: Colors.white,
          ),
        ),
      const  Icon(Icons.message,size: 35,color: Colors.white,),
      ],
    );
  }
}

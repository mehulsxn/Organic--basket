import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: mq.height * 0.12,
          width: mq.width * 0.25,
          decoration: BoxDecoration(
            color: KPrimaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            'Fruits',
            style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
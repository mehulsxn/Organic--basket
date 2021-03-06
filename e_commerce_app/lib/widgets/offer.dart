import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  final String image;

  Offers({this.image});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: mq.width * 0.7,
      decoration: BoxDecoration(
        color: KPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

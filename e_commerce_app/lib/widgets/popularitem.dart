import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class Popular extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      height: mq.height * 0.12,
      width: mq.width * 0.4,
      decoration: BoxDecoration(
        color: KPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
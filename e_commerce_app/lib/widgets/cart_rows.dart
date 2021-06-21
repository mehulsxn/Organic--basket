import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class CartRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: mq.height * 0.15,
            width: mq.width * 0.25,
            child: Image.network(
                'https://pbs.twimg.com/media/C78ez7TXgAAc8xt.jpg'),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Apple',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text('\$17.00'),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(Icons.plus_one),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: KPrimaryColor,
              ),
              height: 25,
              width: 25,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(Icons.exposure_minus_1),
          ],
        ),
      ],
    );
  }
}

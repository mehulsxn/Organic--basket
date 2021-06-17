import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * 0.2,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: mq.height * 0.18,
            width: mq.height,
            child: Image.network(
              'https://png.pngtree.com/png-clipart/20201226/ourmid/pngtree-delicious-fresh-strawberry-png-image_2645827.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              'Strawberry(1 KG)',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Text(
            '\$17.00/kg',
            style: TextStyle(fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$17.20/kg',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: KPrimaryColor),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 45,
                    decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                    ),
                    child: Icon(Icons.add_shopping_cart,color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
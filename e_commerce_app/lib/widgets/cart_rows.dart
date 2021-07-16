import 'package:e_commerce_app/core/cart.dart';
import 'package:e_commerce_app/core/store.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartRows extends StatelessWidget {
  final ProductModel productModel;
  final String uid = FirebaseAuth.instance.currentUser.uid;
  CartRows({this.productModel});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: mq.height * 0.15,
            width: mq.width * 0.25,
           child: Image.asset(productModel.image),
            //child: Image.network('https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__340.jpg'),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productModel.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '\$17.00/Kg',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '\$17.00 ',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: KPrimaryColor),
            ),
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {
              AddProduct(productModel,uid);
            },
            icon: Icon(Icons.add)),
        // Column(
        //   children: [
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Icon(CupertinoIcons.plus),
        //     SizedBox(
        //       height: 15,
        //     ),
        //     Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(5),
        //         color: KPrimaryColor,
        //       ),
        //       height: 25,
        //       width: 25,
        //     ),
        //     SizedBox(
        //       height: 15,
        //     ),
        //     Icon(CupertinoIcons.minus),
        //   ],
        // ),
      ],
    );
  }
}

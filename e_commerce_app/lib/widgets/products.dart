import 'package:e_commerce_app/core/cart.dart';
import 'package:e_commerce_app/core/store.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/screens/description_screen.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final ProductModel productModel;

  Products({this.productModel});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery
        .of(context)
        .size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (ctx) => DescriptionScreen(

              )),
        );
      },
      child: Container(
        height: mq.height * 0.2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
        height: mq.height * 0.18,
          width: mq.width,
          child: Image.network(
            productModel.image,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Text(
              productModel.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
      onTap: () {
        AddProduct(productModel);
      },
      child: Container(
      height: 50,
      width: 45,
      decoration: BoxDecoration(
      color: KPrimaryColor,
      borderRadius:
      BorderRadius.only(topLeft: Radius.circular(20))),
      child: Icon(
      Icons.add_shopping_cart,
      color: Colors.white,
      ),
      ),
      ),
      ],
      ),
      ),
      ],
      ),
      ),
    );
  }
}

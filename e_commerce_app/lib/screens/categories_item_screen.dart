import 'package:e_commerce_app/data/data.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:e_commerce_app/widgets/products.dart';
import 'package:flutter/material.dart';

class CategoriesItemScreen extends StatelessWidget {
  final String title;
  final List<ProductModel> productModel;

  CategoriesItemScreen({this.title, this.productModel});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(title),
        backgroundColor: KPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: mq.height,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Container(
                height: mq.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6),
                  itemBuilder: (ctx, index) => Products(
                    productModel: productModel[index],
                  ),
                  itemCount: productModel.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

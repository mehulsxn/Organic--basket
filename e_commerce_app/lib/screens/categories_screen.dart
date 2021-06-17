import 'package:e_commerce_app/data/data.dart';
import 'package:e_commerce_app/widgets/cateogry_item.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        elevation: 0,
        title: Text('Categories'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: mq.height,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.8),
                  itemBuilder: (ctx, index) => CategoryItem(title: Data.categories[index].title,),
                  itemCount: Data.categories.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

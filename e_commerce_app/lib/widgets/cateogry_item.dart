import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/categories_item_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;

  CategoryItem({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (ctx) => CategoriesItemScreen(
                    title: title,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                image,
                fit: BoxFit.cover,
              )),
              height: mq.height * 0.12,
              width: mq.width * 0.25,
              decoration: BoxDecoration(
                color: KPrimaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

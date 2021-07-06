import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: mq.height * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25)),
                ),
                child: Image.network(
                  'https://images.immediate.co.uk/production/volatile/sites/30/2013/06/Strawberries-in-a-bowl-e53b458-scaled.jpg?quality=90&resize=768%2C574',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            Container(
              height: mq.height * 0.2,
              width: mq.width * 0.95,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: mq.height * 0.001,
                  ),
                  Text('Strawberry',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '\$17.00',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '14 Calories',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.star_border_outlined)
                    ],
                  ),
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: Icon(CupertinoIcons.minus),
                        decoration: BoxDecoration(
                            color: KPrimaryColor,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        width: mq.width * 0.1,
                      ),
                      Text(
                        '1 Kg',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: mq.width * 0.1,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        child: Icon(CupertinoIcons.add),
                        decoration: BoxDecoration(
                            color: KPrimaryColor,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: mq.height * 0.26,
              width: mq.width * 0.95,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) => Container(
                  margin: EdgeInsets.only(right: 15),
                  height: mq.height * 0.3,
                  width: mq.width * 0.92,
                  decoration: BoxDecoration(
                      color: KPrimaryColor,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
            SizedBox(
              height: mq.height * 0.05,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(5),
              height: mq.height * 0.22,
              width: mq.width * 0.95,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) => Container(
                  margin: EdgeInsets.only(right: 15, top: 15),
                  height: mq.height * 0.09,
                  width: mq.width * 0.35,
                  decoration: BoxDecoration(
                      color: KPrimaryColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
            SizedBox(
              height: mq.height * 0.05,
            ),
            BottomNavigationBar(
              selectedItemColor: KPrimaryColor,
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money_sharp), label: '\$17.00'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'Add to Cart'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

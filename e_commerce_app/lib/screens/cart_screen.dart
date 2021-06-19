import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimaryColor,
        title: Text('Cart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(16),
              height: mq.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (ctx, index) =>
                        Container(
                            margin: EdgeInsets.all(15),
                            
                        )),
              ),
            ),
            Container(
              height: mq.height * 0.15,
              color: KPrimaryColor.withOpacity(0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Total: \$28.60',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: KPrimaryColor),
                      onPressed: () {},
                      child: Text(
                        'Checkout >',
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

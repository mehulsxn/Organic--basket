import 'package:e_commerce_app/widgets/cart_rows.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
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
              padding: EdgeInsets.all(22),
              height: mq.height*0.6 ,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30) )
              ),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      CartRows(),
                      SizedBox(
                        height: 10,
                      ),
                      CartRows(),
                      SizedBox(
                        height: 10,
                      ),
                      CartRows(),
                      SizedBox(
                        height: 10,
                      ),
                      CartRows(),
                      SizedBox(
                        height: 10,
                      ),
                      CartRows(),
                      SizedBox(
                        height: 10,
                      ),
                      CartRows(),
                    ],
                  ),

                ),
              ),
            ),
            Container(
              height: mq.height*0.2,
              color: Colors.white,
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

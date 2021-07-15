import 'package:e_commerce_app/core/cart.dart';
import 'package:e_commerce_app/core/store.dart';
import 'package:e_commerce_app/widgets/cart_rows.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyStore store = VxState.store;



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
              height: mq.height * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: VxBuilder(
                mutations: {RemoveProduct},
                builder: (context,_,status)=>
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: store.cart.allProductsInCart.length == 0
                      ? Text('No items added')
                      : ListView.builder(
                          itemCount: store.cart.allProductsInCart.length,
                          itemBuilder: (ctx, index) => Dismissible(
                            key: UniqueKey(),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {
                              RemoveProduct(
                                  store.cart.allProductsInCart[index]);
                            },
                            child: CartRows(
                              productModel: store.cart.allProductsInCart[index],
                            ),
                          ),
                        ),
                ),
              ),
            ),
            Container(
              height: mq.height * 0.2,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VxBuilder(
                    mutations: {AddProduct,RemoveProduct},
                    builder: (context,_,__) =>
                        Text(
                          'Total: ${store.cart.totalPrice}',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                        ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: KPrimaryColor),
                        onPressed: () {},
                        child: Text(
                          'Checkout >',
                          style: TextStyle(fontSize: 18),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

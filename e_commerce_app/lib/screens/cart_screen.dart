import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/cart.dart';
import 'package:e_commerce_app/core/store.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/widgets/cart_rows.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:velocity_x/velocity_x.dart';

class CartScreen extends StatelessWidget {
  final String uid = FirebaseAuth.instance.currentUser.uid;

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
                builder: (context, _, status) => Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Users')
                        .doc(uid)
                        .snapshots(),
                    builder: (ctx, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data;

                        List<ProductModel> list=[];

                        data['cart'].forEach((ele) {
                          list.add(
                            ProductModel(

                              image: ele ['image'],
                              id: ele['id'],
                              title: ele['title'],
                              itemPrice: ele['itemPrice'],
                            ),
                          );
                        });

                        return ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (ctx, index) => Dismissible(
                            key: UniqueKey(),
                            background: Container(color: Colors.redAccent,),
                            secondaryBackground: Container(
                              child: Center(
                                child: Text(
                                  'Delete',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              color: Colors.red,
                            ),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {
                              FirebaseFirestore.instance
                                  .collection('Users')
                                  .doc(uid)
                                  .update({
                                'cart': FieldValue.arrayRemove([
                                  {
                                    'image': list[index].image,
                                    'id': list[index].id,
                                    'title': list[index].title,
                                    'itemPrice': list[index].itemPrice,
                                  }
                                ]),
                              });

                              // RemoveProduct(
                              //     // store.cart.allProductsInCart[index],
                              // );
                            },
                            child: CartRows(
                              productModel: list[index],
                            ),
                          ),
                        );


                      } else {
                        return Text('No Product added ');
                      }
                    },
                  ),
                  // child: store.cart.allProductsInCart.length == 0
                  //     ? Text('No items added')
                  //     : ListView.builder(
                  //         itemCount: store.cart.allProductsInCart.length,
                  //         itemBuilder: (ctx, index) => Dismissible(
                  //           key: UniqueKey(),
                  //           direction: DismissDirection.endToStart,
                  //           onDismissed: (direction) {
                  //             RemoveProduct(
                  //                 store.cart.allProductsInCart[index]);
                  //           },
                  //           child: CartRows(
                  //             productModel: store.cart.allProductsInCart[index],
                  //           ),
                  //         ),
                  //       ),
                ),
              ),
            ),
            Container(
              height: mq.height * 0.2,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Users')
                        .doc(uid)
                        .snapshots(),
                    builder: (ctx, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data;

                        int totalPrice = 0;

                        data['cart'].forEach((ele) {
                          totalPrice = totalPrice + ele['itemPrice'];
                        });

                        return Text(
                          'Total: $totalPrice',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        );
                      } else {
                        return Text(
                          'Total: 0',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        );
                      }
                    },
                  ),
                  // VxBuilder(
                  //   mutations: {AddProduct, RemoveProduct},
                  //   builder: (context, _, __) => Text(
                  //     'Total: ${store.cart.totalPrice}',
                  //     style:
                  //         TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: KPrimaryColor),
                        onPressed: () {

                        },
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

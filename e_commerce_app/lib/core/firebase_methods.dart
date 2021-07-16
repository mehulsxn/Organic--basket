import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:flutter/cupertino.dart';

final db = FirebaseFirestore.instance;

class FirebaseMethods {
  static void saveUserToFirebase({String uid, String name, String email,String phoneno,String address}) {
    db.collection('Users').doc(uid).set({
      'name': name,
      'email': email,
      'phoneno': phoneno,
      'address': address,
    });
  }

  // static Future<void> getDataFromFirebase(String uid) async {
  //   await db.collection('Users').doc(uid).delete();
  //   print('dqwdqwdqw');
  //
  // }


  static addProductToCartOnFirebase(String uid, ProductModel productModel) {
    db.collection('Users').doc(uid).update({
      'cart': FieldValue.arrayUnion([
        {
          'image': productModel.image,
          'id': productModel.id,
          'title': productModel.title,
          'itemPrice': productModel.itemPrice,
        }
      ]),
    });
  }
}

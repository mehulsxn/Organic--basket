import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

final db = FirebaseFirestore.instance;

class FirebaseMethods {
  static void saveUserToFirebase({String uid, String name, String email}) {
    db.collection('Users').doc(uid).set({
      'name': name,
      'email': email,
    });
  }

  static Future<void> getDataFromFirebase(String uid) async {
    await db.collection('Users').doc(uid).delete();
    print('dqwdqwdqw');

  }

// static addProductToCartOnFirebase(String uid){
//   db.collection('Users').doc(uid).set({
//
//     'cart':
//
//   });
}

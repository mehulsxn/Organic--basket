import 'package:cloud_firestore/cloud_firestore.dart';

final db = FirebaseFirestore.instance;

class FirebaseMethods {

  static void saveUserToFirebase({String uid,String name,String email}) {
    db.collection('Users').doc(uid).set({
      'name': name,
      'email': email,
    });
  }
}

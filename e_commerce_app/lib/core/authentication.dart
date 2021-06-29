import 'package:e_commerce_app/core/firebase_methods.dart';
import 'package:e_commerce_app/screens/tabs_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

final auth = FirebaseAuth.instance;

class Authentication {
  static Future<void> signUp(
      {BuildContext context, String email, String password,String name}) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User user = userCredential.user;

      if (user != null) {
        FirebaseMethods.saveUserToFirebase(uid: user.uid,name: name,email: email);
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => TabScreen()));
      }
    } catch (error) {
      var errorMessage = 'Failed: Please try again';

      if (error.toString().contains('ERROR_TOO_MANY_REQUESTS')) {
        errorMessage = 'Too many requests. Try again Later!';
      } else if (error.toString().contains('email address is already in use')) {
        errorMessage = 'User Already Registered';
      } else if (error
          .toString()
          .contains('Password should be at least 6 characters')) {
        errorMessage = 'Password too short';
      } else if (error.toString().contains('A network error')) {
        errorMessage = 'Network error';
      }
      Fluttertoast.showToast(
          msg: errorMessage,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  static Future<void> login(
      {BuildContext context, String email, String password}) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      User user = userCredential.user;

      if (user != null) {


        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) => TabScreen()));
      }
    } catch (error) {
      var errorMessage = 'Failed! Try again Later';
      if (error.toString().contains('password is invalid')) {
        errorMessage = 'Opps! Wrong Password';
      } else if (error.toString().contains('ERROR_TOO_MANY_REQUESTS')) {
        errorMessage = 'Too many requests. Try again Later!';
      } else if (error.toString().contains('no user record corresponding')) {
        errorMessage = 'User not Registered';
      } else if (error.toString().contains('A network error')) {
        errorMessage = 'Network error';
      }
      ;
    }
  }

  static Future<void> signOut() async {
    await auth.signOut();
  }
}

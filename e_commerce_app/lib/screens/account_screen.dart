import 'package:e_commerce_app/core/authentication.dart';
import 'package:e_commerce_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Sign Out'),
          onPressed: () {
            Authentication.signOut().whenComplete(() {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) => WelcomeScreen()),
              (route) => false);
            });
          }
        ),
      ),
    );
  }
}
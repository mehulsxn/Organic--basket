import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/signup_screen.dart';
import 'package:e_commerce_app/screens/tabs_screen.dart';
import 'package:e_commerce_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';


void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TabScreen(),

      routes: {
        './welcome-screen': (ctx)=> WelcomeScreen(),
        './login-screen': (ctx)=> LoginScreen(),
        './sign-up-screen': (ctx)=> SignupScreen(),


      },

    );
  }
}
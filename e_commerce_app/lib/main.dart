import 'package:e_commerce_app/core/store.dart';
import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/categories_screen.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/signup_screen.dart';
import 'package:e_commerce_app/screens/tabs_screen.dart';
import 'package:e_commerce_app/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    VxState(store: MyStore(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null
          ? WelcomeScreen()
          : TabScreen(),
      routes: {
        './welcome-screen': (ctx) => WelcomeScreen(),
        './login-screen': (ctx) => LoginScreen(),
        './sign-up-screen': (ctx) => SignupScreen(),
        './categories-screen': (ctx) => CategoriesScreen(),
      },
    );
  }
}

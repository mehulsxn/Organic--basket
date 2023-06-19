import 'package:e_commerce_app/core/firebase_methods.dart';
import 'package:e_commerce_app/screens/account_screen.dart';
import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/home_screen.dart';

import 'package:e_commerce_app/widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  //String uid = FirebaseAuth.instance.currentUser.uid;
  List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  int pageIndex = 0;

  void changepage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //FirebaseMethods.getDataFromFirebase(uid);
    return Scaffold(
      body: screens[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: KPrimaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: pageIndex,
        onTap: changepage,
        items: [
          BottomNavigationBarItem(
              icon: pageIndex == 0
                  ? Icon(Icons.category, size: 30)
                  : Icon(Icons.category_outlined, size: 30),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: pageIndex == 1
                  ? Icon(Icons.shopping_cart, size: 30)
                  : Icon(Icons.shopping_cart_outlined, size: 30),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: pageIndex == 2
                  ? Icon(Icons.person, size: 30)
                  : Icon(Icons.person_outline, size: 30),
              label: 'Account'),
        ],
      ),
    );
  }
}

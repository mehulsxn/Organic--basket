import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KPrimaryColor,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Hey\nLet\'s search your organic food'),
        ),
        actions: [
          Container(
            child: Image.asset('assets/images/googlelogo.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          buildSearchBox(),
        ],
      ),
    );
  }

  Widget buildSearchBox() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 35,
              ),
              border: UnderlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}

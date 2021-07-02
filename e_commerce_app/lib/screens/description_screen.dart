import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:mq.height*0.1,
            width:double.infinity,
            child: Image.network('https://png.pngtree.com/png-clipart/20201226/ourmid/pngtree-delicious-fresh-strawberry-png-image_2645827.jpg'),
          ),
        ],
      ),

    );
  }
}

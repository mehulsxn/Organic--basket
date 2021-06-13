import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: mq.height * 0.18,
          ),
          buildTitle(),
          Spacer(),
          buildButton('Sign up', mq),
          SizedBox(
            height: mq.height * 0.025,
          ),
          buildButton('Log in', mq),
          Spacer(),
        ],
      ),
    ));
  }

  Widget buildTitle() {
    return Container(
      child: Text(
        'The best\napp for\nyour organic',
        style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildButton(String type, Size mq) {
    return SizedBox(
      height: mq.height * 0.07,
      width: mq.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: KPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        onPressed: () {},
        child: Text(
          type,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}

import 'package:e_commerce_app/widgets/background_image.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              height: mq.height * 0.18,
            ),
            buildTitle(),
            Spacer(),
            buildButton(context, 'Sign up', mq),
            SizedBox(
              height: mq.height * 0.025,
            ),
            buildButton(context, 'Log in', mq),
            Spacer(),
          ],
        ),
      )),
    ]
    );
  }

  Widget buildTitle() {
    return Container(
      child: Text(
        'The best\napp for\nyour organic',
        style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildButton(BuildContext context, String type, Size mq) {
    return SizedBox(
      height: mq.height * 0.07,
      width: mq.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        onPressed: () {
          if (type == 'Log in') {
            Navigator.of(context).pushNamed('./login-screen');
          } else {
            Navigator.of(context).pushNamed('./sign-up-screen');
          }
        },
        child: Text(
          type,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}

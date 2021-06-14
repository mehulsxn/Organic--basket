import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mq.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Login to your\naccount",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Welcome back!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: mq.height * 0.1,
              ),
              buildEmailField(),
              buildPasswordField(),
              SizedBox(
                height: mq.height * 0.1,
              ),
              buildLoginButton(mq),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('OR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey)),
              )),
              buildLoginGoogleButton(mq),
              buildSignUpButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmailField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'E-mail',
          prefixIcon: Icon(
            Icons.email_sharp,
            color: Colors.grey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget buildPasswordField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(
            Icons.vpn_key,
            color: Colors.grey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton(Size mq) {
    return Center(
      child: SizedBox(
          height: mq.height * 0.07,
          width: mq.width * 0.8,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              child: Text(
                'Log in',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ))),
    );
  }

  Widget buildSignUpButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account?'),
        TextButton(onPressed: () {Navigator.of(context).pushReplacementNamed('./sign-up-screen');}, child: Text('Sign Up'))
      ],
    );
  }

  Widget buildLoginGoogleButton(Size mq) {
    return Center(
      child: SizedBox(
          height: mq.height * 0.07,
          width: mq.width * 0.8,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 50,

                    child: Image.asset('assets/images/googlelogo.png'),
                  ),
                  Text(
                    'Log in with Google',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ))),
    );
  }
}

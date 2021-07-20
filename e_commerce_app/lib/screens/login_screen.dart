import 'package:e_commerce_app/core/authentication.dart';
import 'package:e_commerce_app/core/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  String _email;

  String _password;

  _save() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();

      Authentication.login(
          context: context, email: _email, password: _password);
    }
  }

  MyStore store = VxState.store;

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
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    buildEmailField(),
                    buildPasswordField(),
                  ],
                ),
              ),
              SizedBox(
                height: mq.height * 0.1,
              ),
              // ignore: missing_return
              VxBuilder(builder: (_,__,____){
                return store.isLoading == true
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                      ],
                    )
                    : buildLoginButton(mq);
              },
                mutations : {ToggleLoading}),

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
        onSaved: (value) {
          _email = value;
        },
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
        onSaved: (value) {
          _password = value;
        },
      ),
    );
  }

  Widget buildLoginButton(Size mq) {
    return Center(
      child: SizedBox(
          height: mq.height * 0.07,
          width: mq.width * 0.8,
          child: ElevatedButton(
              onPressed: _save,
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
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('./sign-up-screen');
            },
            child: Text('Sign Up'))
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

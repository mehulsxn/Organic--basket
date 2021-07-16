import 'package:e_commerce_app/core/authentication.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  String _email;

  String _password;

  String _name;

  String _phoneno;

  String _address;

  _save() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      Authentication.signUp(
          context: context, email: _email, password: _password, name: _name, phoneno: _phoneno,address: _address);
    }
  }

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
                  "Create your\naccount",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Join Us!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: mq.height * 0.05,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    buildNameField(),
                    buildPhonenoField(),
                    buildEmailfField(),
                    buildaddressField(),
                    buildPasswordField('Password'),
                  ],
                ),
              ),
              SizedBox(
                height: mq.height * 0.05,
              ),
              buildSignUpButton(mq, context),
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
              buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildaddressField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Address',
          prefixIcon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        onSaved: (value) {
          _address = value;
        },
        // ignore: missing_return
        validator: (_value) {
          if (_value.isEmpty) {
            return 'Please enter Address';
          }
        },
      ),
    );
  }




  Widget buildNameField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Name',
          prefixIcon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        onSaved: (value) {
          _name = value;
        },
        // ignore: missing_return
        validator: (_value) {
          if (_value.isEmpty) {
            return 'Please enter name';
          }
        },
      ),
    );
  }
  Widget buildPhonenoField() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Phone no',
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.grey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        onSaved: (value) {
          _phoneno = value;
        },
        // ignore: missing_return
        validator: (_value) {
          if (_value.isEmpty) {
            return 'Please enter phone no';
          }
        },
      ),
    );
  }

  Widget buildEmailfField() {
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

  Widget buildPasswordField(String text) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: text,
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
        // ignore: missing_return
        validator: (value){
          if(value.isEmpty){
            return 'Please entre your value';
          }
          if(value.length<6){
            return'password length should be of more than 5';
          }
        },
      ),
    );
  }

  Widget buildSignUpButton(Size mq, BuildContext context) {
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
                'Sign up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ))),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account?'),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('./login-screen');
            },
            child: Text('Sign in'))
      ],
    );
  }

  Widget buildLoginGoogleButton(Size mq) {
    return Center(
      child: SizedBox(
          height: mq.height * 0.07,
          width: mq.width * 0.8,
          child: ElevatedButton(
              onPressed: () {
                Authentication.signInWithGoogle(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    child: Image.asset('assets/images/googlelogo.png'),
                  ),
                  Text(
                    'Sign up with Google',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ))),
    );
  }
}

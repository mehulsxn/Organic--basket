import 'dart:io';
import 'package:e_commerce_app/core/authentication.dart';
import 'package:e_commerce_app/screens/welcome_screen.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  File _image;
  final picker = ImagePicker();

  Future _getImage() async {
    final PickedFile imageFile =
        await picker.getImage(source: ImageSource.gallery);

    if (imageFile == null) return;

    setState(
      () {
        _image = File(imageFile.path);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: KPrimaryColor.withOpacity(0.8),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 55,
              ),
              Stack(children: [
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: _image == null
                      ? Text(
                          'No image ',
                          textAlign: TextAlign.end,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      : Image.file(_image),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Center(
                    child: ElevatedButton(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                      onPressed: () => _getImage(),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 560,
                width: double.infinity,
                //color: Colors.grey,
                child: Column(
                  children: [
                    BuildFormField('Name'),
                    SizedBox(height: 15),
                    BuildFormField('Email'),
                    SizedBox(height: 15),
                    BuildFormField('Password'),
                    SizedBox(height: 15),
                    BuildFormField('Phone No'),
                    SizedBox(height: 15),
                    BuildFormField('Address'),
                    SizedBox(height: 15),
                    BuildEditButton(),
                    SizedBox(height: 15),
                    BuildLogoutButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildFormField(String text) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }

  Widget BuildEditButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        '               SAVE               ',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget BuildLogoutButton() {
    return ElevatedButton(
      child: Text(
        '             Signout             ',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: () {
        Authentication.signOut().whenComplete(() {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (ctx) => WelcomeScreen()),
              (route) => false);
        });
      },
    );
  }
}

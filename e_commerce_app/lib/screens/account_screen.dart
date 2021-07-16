import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/core/authentication.dart';
import 'package:e_commerce_app/screens/welcome_screen.dart';
import 'package:e_commerce_app/widgets/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
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

  final String uid = FirebaseAuth.instance.currentUser.uid;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: StreamBuilder(
      stream:
          FirebaseFirestore.instance.collection('Users').doc(uid).snapshots(),
      builder: (ctx, snapshot) {
        var data = snapshot.data;

        return Container(
          //color: KPrimaryColor,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [
              KPrimaryColor,
              Colors.lightBlueAccent,
            ],)
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                ),
                Container(
                  height: 100,
                  width: 120,
                  child: Stack(children: [
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Center(
                        child: _image == null
                            ? Text(
                                'No image ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            : Image.file(
                                _image,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                            onPressed: () => _getImage(),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
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
                      BuildFormField('Name', data['name']),
                      SizedBox(height: 20),
                      BuildFormField('Email', data['email']),

                      SizedBox(height: 20),
                      BuildFormField('Phone No', data['phoneno']),
                      SizedBox(height: 20),
                      BuildFormField('Address', data['address']),
                      SizedBox(height: 20),
                      BuildEditButton(),
                      SizedBox(height: 20),
                      BuildLogoutButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }

  Widget BuildFormField(String text, String value) {
    return TextFormField(
      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
      initialValue: value,
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
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          )),
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
      style: ElevatedButton.styleFrom(
          primary: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          )),
      child: Text(
        'Signout',
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
